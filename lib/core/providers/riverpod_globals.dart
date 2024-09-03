import 'dart:io';
import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

// Join Now Global Variables
final whoOwnTheFarmProvider = StateProvider<String>((ref) => '');
final whatIsTheNameOfYourFarmProvider = StateProvider<String>((ref) {
  return '';
  //return ref.watch(userProvider).value ?? '';
});
final hasErrorProvider = StateProvider<bool>((ref) => false);

// Sign Up Global Variables
final selectedCountryCodeProvider = StateProvider<String>((ref) => "+966");
final selectedCountryFlagProvider =
    StateProvider<String>((ref) => "assets/icons/flags/Country=SA.png");
final phoneNumberProvider = StateProvider.autoDispose<String>((ref) => '');
final otpProvider = StateProvider.autoDispose<String>((ref) => '');
final emailAddressProvider = StateProvider<String>((ref) => '');

// Create Password Global Variables
final passwordProvider = StateProvider<String>((ref) => '');
final passwordConfirmProvider = StateProvider<String>((ref) => '');

// Add Personal Information Global Variables
final firstNameProvider = StateProvider<String>((ref) => '');
final lastNameProvider = StateProvider<String>((ref) => '');

// Add Some Details Global Variables
final farmAddressProvider = StateProvider<String>((ref) => '');
final cityProvider = StateProvider<String>((ref) => '');
final countryProvider = StateProvider<String>((ref) => '');
final profilePictureProvider = StateProvider<File?>((ref) => null);

// Privacy & Security Global Variables
final emailAddressVisibilityProvider = StateProvider<bool>((ref) => false);
final phoneNumberVisibilityProvider = StateProvider<bool>((ref) => false);
final uploadedFilesProvider = Provider<List<Uri>>((ref) => []);

int generateRandomId(int length) {
  Random rnd = Random();

  return rnd.nextInt((pow(10, length) as int) - 1);
}
