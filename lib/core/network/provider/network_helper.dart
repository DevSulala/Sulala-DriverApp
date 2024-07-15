import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sulala_driver_app/core/injection/injection.dart';
import 'package:sulala_driver_app/core/network/provider/network_module.dart';

class NetworkHelper {
  // static const kApiBaseUrl = 'https://sulala.com/services/api/v1';
  static const kApiBaseUrl = 'http://34.18.54.116:3001/api/v1';
  static Cookie? accessToken;
  static Cookie? refreshToken;
  static http.Client client = http.Client();
  static NetworkService netowrkService = getIt<NetworkService>();

  static Future<http.Response> post(
      String url, Map body, bool authorized) async {
    return _sendRequest('POST', url, body, authorized);
  }

  static Future<http.Response> get(String url, bool authorized) async {
    return _sendRequest('GET', url, {}, authorized);
  }

  static Future<http.Response> patch(
      String url, Map body, bool authorized) async {
    return _sendRequest('PATCH', url, body, authorized);
  }

  static Future<http.Response> delete(
      String url, Map body, bool authorized) async {
    return _sendRequest('DELETE', url, body, authorized);
  }

  static Future<void> saveTokens(http.Response response) async {
    final prefs = await SharedPreferences.getInstance();
    // getIt<NetworkModule>().setToken(token, dio)

    for (var value in response.headersSplitValues['set-cookie'] ?? []) {
      final cookie = Cookie.fromSetCookieValue(
          value.replaceAll(RegExp(r'expires=(.*?); '), ''));
      if (cookie.name == 'access') {
        cookie.expires = DateTime.now().add(const Duration(minutes: 3600));
        prefs.setString('accessToken', cookie.value);
        prefs.setInt(
            'accessTokenExpiration', cookie.expires!.millisecondsSinceEpoch);
        accessToken = cookie;
        netowrkService.setToken(accessToken!.value);
      } else if (cookie.name == 'refresh') {
        prefs.setString('refreshToken', cookie.value);
        cookie.expires = DateTime.now().add(const Duration(days: 10));
        prefs.setInt(
            'refreshTokenExpiration', cookie.expires!.millisecondsSinceEpoch);
        refreshToken = cookie;
      }
    }

    if (kDebugMode) {
      print(accessToken);
      print(refreshToken);
    }
  }

  static Future<void> loadTokens() async {
    final prefs = await SharedPreferences.getInstance();
    accessToken = Cookie('access', prefs.getString('accessToken') ?? '');
    if (accessToken?.value.isNotEmpty == true) {
      netowrkService.setToken(accessToken!.value);
    }

    accessToken!.expires = DateTime.fromMillisecondsSinceEpoch(
        prefs.getInt('accessTokenExpiration') ?? 0);
    refreshToken = Cookie('refresh', prefs.getString('refreshToken') ?? '');
    refreshToken!.expires = DateTime.fromMillisecondsSinceEpoch(
        prefs.getInt('refreshTokenExpiration') ?? 0);

    if (kDebugMode) {
      print(accessToken);
      print(refreshToken);
    }
  }

  static Future<void> refreshTokens() async {
    final response = await http.post(Uri.parse("$kApiBaseUrl/refresh-token/"),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer ${accessToken?.value}',
          'Cookie':
              'access=${accessToken?.value};refresh=${refreshToken?.value}'
        },
        body:
            jsonEncode(<String, String>{'refresh': '${refreshToken?.value}'}));

    if (response.statusCode == 200) {
      final prefs = await SharedPreferences.getInstance();
      final responseData = jsonDecode(response.body);
      accessToken = Cookie('access', responseData['access']);
      if (accessToken?.value.isNotEmpty == true) {
        netowrkService.setToken(accessToken!.value);
      }
      accessToken!.expires = DateTime.now().add(const Duration(minutes: 3600));
      prefs.setString('accessToken', accessToken!.value);
      prefs.setInt('accessTokenExpiration',
          accessToken!.expires!.millisecondsSinceEpoch);
      refreshToken = Cookie('refresh', responseData['refresh']);
      refreshToken!.expires = DateTime.now().add(const Duration(days: 10));
      prefs.setString('refreshToken', refreshToken!.value);
      prefs.setInt('refreshTokenExpiration',
          refreshToken!.expires!.millisecondsSinceEpoch);
    }
    if (kDebugMode) {
      print(accessToken);
      print(refreshToken);
    }
  }

  static Future<http.Response> _sendRequest(
      String method, String url, Map body, bool authorized,
      {repeated = false}) async {
    final headers = <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    };
    if (authorized) {
      final now = DateTime.now();
      if (accessToken?.expires?.isBefore(now) == true ||
          accessToken?.expires?.isAtSameMomentAs(now) == true) {
        await refreshTokens();
      }
      headers['Authorization'] = 'Bearer ${accessToken?.value}';
    }
    http.Response response;
    switch (method) {
      case 'POST':
        response = await client.post(Uri.parse("$kApiBaseUrl$url"),
            headers: headers, body: jsonEncode(body));
        break;
      case 'PATCH':
        response = await client.patch(Uri.parse("$kApiBaseUrl$url"),
            headers: headers, body: jsonEncode(body));
        break;
      case 'DELETE':
        response = await client.delete(Uri.parse("$kApiBaseUrl$url"),
            headers: headers);
        break;
      case 'GET':
      default:
        response =
            await client.get(Uri.parse("$kApiBaseUrl$url"), headers: headers);
    }
    if (response.statusCode == 401 && !repeated) {
      return _sendRequest(method, url, body, authorized, repeated: true);
    }
    if (!Platform.environment.containsKey('FLUTTER_TEST')) {
      if (kDebugMode) {
        print('method: $method');
        print('url: $url');
        print('data sent:');
        print(body);
        print('status code: ${response.statusCode}');
        print('data received:');
        print(response.body);
      }
    }

    return response;
  }

  static Future<void> removeTokens() async {
    accessToken!.value = '';
    refreshToken!.value = '';

    SharedPreferences.getInstance().then((prefs) {
      prefs.remove('accessToken');
      prefs.remove('refreshToken');
      prefs.remove('accessTokenExpiration');
      prefs.remove('refreshTokenExpiration');
    });
  }
}
