import 'package:injectable/injectable.dart';

@injectable
class AppConfig {
  // String get baseUrl => "https://sulala.com/services/api/v1/";
  String get baseUrl => "http://34.18.54.116:3001/api/v1/";
  // String get baseUrl => "http://192.168.0.140:8000/api/v1/";

  String get termsAndConditionUrl =>
      "https://sulala.com/en/legal/terms-and-conditions";

  Map<String, String> get headers => {};
}
