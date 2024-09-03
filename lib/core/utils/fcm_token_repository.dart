import 'package:firebase_messaging/firebase_messaging.dart';

class FCMTokenRepository {
  static final FCMTokenRepository _instance = FCMTokenRepository.intenal();
  factory FCMTokenRepository() => _instance;
  FCMTokenRepository.intenal();
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  ///Used instead of streams to easily access previous elements while
  ///token updates
  Future<String?> get firebaseToken async {
    return _firebaseMessaging.getToken();
  }

  // TODO: implement fcm token refresh
  Future<dynamic> onTokenRefresh(String? currentToken) async {}
}
