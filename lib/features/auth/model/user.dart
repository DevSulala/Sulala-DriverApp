import 'package:sulala_driver_app/core/constants/globals.dart';

class User {
  final int? id;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phoneNumber;
  final String? namePronunciation;
  final bool? isStaff;
  final bool? isAdmin;
  final bool? phoneVerified;
  final bool? emailVerified;

  final List? groups;
  final Uri? profilePhoto;
  final bool? isPasswordSet;

  User({
    this.id,
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.namePronunciation,
    this.isStaff,
    this.isAdmin,
    this.phoneVerified,
    this.emailVerified,
    this.groups,
    this.profilePhoto,
    this.isPasswordSet,
  });

  User copyWith({
    int? id,
    String? username,
    String? firstName,
    String? lastName,
    String? email,
    String? phoneNumber,
    String? namePronunciation,
    bool? isStaff,
    bool? isAdmin,
    bool? phoneVerified,
    bool? emailVerified,
    List? groups,
    Uri? profilePhoto,
    bool? isPasswordSet,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      namePronunciation: namePronunciation ?? this.namePronunciation,
      isStaff: isStaff ?? this.isStaff,
      isAdmin: isAdmin ?? this.isAdmin,
      phoneVerified: phoneVerified ?? this.phoneVerified,
      emailVerified: emailVerified ?? this.emailVerified,
      groups: groups ?? this.groups,
      profilePhoto: profilePhoto ?? this.profilePhoto,
      isPasswordSet: isPasswordSet ?? this.isPasswordSet,
    );
  }

  factory User.fromJson(Map json) {
    return User(
      id: json['id'],
      username: json['username'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      phoneNumber: json['phone_number'],
      profilePhoto: json['profile_photo'] != null
          ? Uri.parse(kBaseBackendUrl + json['profile_photo'])
          : null,
      namePronunciation: json['name_pronunciation'],
      isStaff: json['is_staff'],
      isAdmin: json['is_admin'],
      phoneVerified: json['phone_verified'],
      emailVerified: json['email_verified'],
      groups: json['groups'],
      isPasswordSet: json['is_password_set'],
    );
  }

  Map toJson() {
    final data = {
      'id': id,
      'username': username,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'phone_number': phoneNumber,
      'name_pronunciation': namePronunciation,
      'is_staff': isStaff,
      'is_admin': isAdmin,
      'phone_verified': phoneVerified,
      'email_verified': emailVerified,
      'groups': groups
    };
    data.removeWhere((key, value) => value == null);
    return data;
  }

  Map<String, String> toFields() {
    final fields = {
      'first_name': firstName ?? '',
      'last_name': lastName ?? '',
      'username': username ?? '',
    };

    if (email != null && email!.isNotEmpty) {
      fields['email'] = email!;
    }

    if (phoneNumber != null && phoneNumber!.isNotEmpty) {
      fields['phone_number'] = phoneNumber!;
    }

    return fields;
  }

  bool get isSignedIn => id != null;
  String? get fullName => firstName?.isNotEmpty == true
      ? '$firstName ${lastName ?? ''}'.trim()
      : null;
}
