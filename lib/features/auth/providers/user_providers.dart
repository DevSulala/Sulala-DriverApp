import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:sulala_driver_app/core/constants/countries_data.dart';
import 'package:sulala_driver_app/core/network/provider/network_helper.dart';
import 'package:sulala_driver_app/core/providers/riverpod_globals.dart';
import 'package:sulala_driver_app/features/auth/model/user.dart';
import 'package:sulala_driver_app/features/auth/model/user_notification.dart';
import 'package:sulala_driver_app/features/auth/model/user_settings.dart';

enum LoginMethods { otp, email, google, apple }

final authStateProvider = Provider<bool>(
  (ref) {
    final user = ref.watch(userProvider).value ?? User();
    return user.id != null;
  },
);

final userProvider =
    AsyncNotifierProvider<UserNotifier, User>(UserNotifier.new);

class UserNotifier extends AsyncNotifier<User> {
  @override
  FutureOr<User> build() async {
    if (NetworkHelper.accessToken!.value.isNotEmpty) {
      final response = await NetworkHelper.get('/user/profile/', true);

      if (response.statusCode == 200) {
        final responseData = jsonDecode(utf8.decode(response.bodyBytes));
        final userData = responseData['data']['user'];
        final user = User.fromJson(userData);

        final phoneNumber = user.phoneNumber;
        if (phoneNumber != null) {
          for (var country in countriesData) {
            if (phoneNumber.contains(country.countryCode)) {
              ref.read(selectedCountryFlagProvider.notifier).state =
                  country.flagImagePath;
              ref.read(selectedCountryCodeProvider.notifier).state =
                  country.countryCode;
              ref.read(phoneNumberProvider.notifier).state =
                  phoneNumber.substring(country.countryCode.length);
              break;
            }
          }
        }

        return user;
      }
    }
    return User();
  }

  Future<http.StreamedResponse> updateUserProfile(User user) async {
    var headers = {
      'Authorization': 'Bearer ${NetworkHelper.accessToken?.value}'
    };
    var request = http.MultipartRequest('PATCH',
        Uri.parse('${NetworkHelper.kApiBaseUrl}/user/update-user-profile/'));

    request.fields.addAll(user.toFields());

    if (user.profilePhoto?.scheme == 'file') {
      request.files.add(await http.MultipartFile.fromPath(
          'profile_photo', user.profilePhoto!.path));
    }

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (kDebugMode) {
      print('method: ${request.method}');
      print('url: ${request.url}');
      print('data sent: ${request.fields}');
      print('status code: ${response.statusCode}');
    }

    // if (user.farm != null) {
    //   await ref.read(currentFarmProvider.notifier).updateFarm(user.farm!);
    // }

    if (response.statusCode == 200) {
      if (kDebugMode) {
        print('Data received');
        print(await response.stream.bytesToString());
      }
      ref.invalidateSelf();
      await future;
    } else {
      if (kDebugMode) {
        print(response.reasonPhrase);
      }
    }

    return response;
  }

  Future<http.Response> register(
      {required String farmName,
      required String ownerName,
      String? phoneNumber,
      String? email,
      String role = 'owner'}) async {
    final body = role == 'owner'
        ? <String, String>{'farm_name': farmName, 'owner_name': ownerName}
        : <String, String>{};
    if (phoneNumber?.isNotEmpty == true) {
      body['phone_number'] = phoneNumber!;
    }
    if (email?.isNotEmpty == true) {
      body['email'] = email!;
    }
    final url = role == 'owner' ? '/register/' : '/register_users/';
    final response = await NetworkHelper.post(url, body, false);
    if (response.statusCode == 201) {
      final responseData = jsonDecode(response.body) as Map<String, dynamic>;
      final userData = responseData['user'];
      final user = User.fromJson(userData);
      state = AsyncData(user);
    }

    return response;
  }

  Future<http.Response> login(
      {required LoginMethods method,
      String? phoneNumber,
      String? email,
      String? password,
      String? accessToken,
      String? farmName,
      String? ownerName,
      String? code,
      String? firstName,
      String? lastName,
      bool? useBundleId}) async {
    // final uri = Uri(
    //               scheme: 'https',
    //               host: 'lofty-juniper-wednesday.glitch.me',
    //               path: '/sign_in_with_apple',
    //               queryParameters: <String, String>{
    //                 'code': code!,
    //                 if (firstName?.isNotEmpty == true)
    //                   'firstName': firstName!,
    //                 if (lastName?.isNotEmpty == true)
    //                   'lastName': lastName!,
    //                 'useBundleId': useBundleId == true ? 'true' : 'false',
    //               },
    //             );
    // print('uri: $uri');
    return switch (method) {
      LoginMethods.otp => await NetworkHelper.post(
          '/driver-login-with-phone-number/',
          {'phone_number': phoneNumber},
          false),
      LoginMethods.email => await NetworkHelper.post(
          '/login-with-email/', {'email': email, 'password': password}, false),
      LoginMethods.google => await NetworkHelper.post(
          '/google_signin_signup/',
          <String, dynamic>{
            'access_token': accessToken,
            'farm_name': farmName,
            'owner_name': ownerName,
          }..removeWhere((key, value) => value == null || value.isEmpty),
          false),
      LoginMethods.apple => await NetworkHelper.post(
          '/apple_signin_signup/',
          {
            'code': code!.substring(2, code.length - 2),
            'firstName': firstName,
            'lastName': lastName,
            'useBundleId': useBundleId,
            'farm_name': farmName,
            'owner_name': ownerName?.trim(),
          }..removeWhere((key, value) => value == null || value == ''),
          false)
      // LoginMethods.apple => await http.Client().post(
      //             uri
      //           )
    };
  }

  Future<http.Response> deleteAccount() async {
    final response =
        await NetworkHelper.delete('/user/delete-user-account/', {}, true);
    if (response.statusCode == 204) {
      state = AsyncData(User());
    }
    return response;
  }
}

final userSettingsProvider =
    AsyncNotifierProvider<UserSettingsNotifier, UserSettings>(
        UserSettingsNotifier.new);

class UserSettingsNotifier extends AsyncNotifier<UserSettings> {
  @override
  FutureOr<UserSettings> build() async {
    final response = await NetworkHelper.get('/user/setting/', true);
    return UserSettings.fromJson(jsonDecode(response.body)['data']);
  }

  Future<void> updateSettings(UserSettings settings) async {
    state = AsyncData(settings);
    await NetworkHelper.patch(
        '/user/update-user-setting/', settings.toJson(), true);
  }
}

final userNotificationListProvider =
    AsyncNotifierProvider<UserNotificationList, List<UserNotification>>(
        UserNotificationList.new);

class UserNotificationList extends AsyncNotifier<List<UserNotification>> {
  @override
  FutureOr<List<UserNotification>> build() async {
    final user = await ref.watch(userProvider.future);
    if (user.id != null) {
      final response = await NetworkHelper.get('/notifications/', true);
      final List data = jsonDecode(response.body)['data']['results'];
      return data.map((e) => UserNotification.fromJson(e)).toList();
    } else {
      return [];
    }
  }

  Future<void> deleteNotification(int id) async {
    NetworkHelper.delete('/notifications/$id/', {}, true);
    final list = await future;
    state = AsyncData(list.where((element) => element.id != id).toList());
  }

  Future<void> markNotificationsAsRead() async {
    NetworkHelper.patch('/mark_all_notifications_as_read/', {}, true);
    final list = await future;
    state = AsyncData(list.map((e) => e.copyWith(read: true)).toList());
  }
}

final unreadNotificationsCountProvider = FutureProvider<int>((ref) async {
  final notifications = await ref.watch(userNotificationListProvider.future);
  return notifications.where((element) => element.read == false).length;
});
