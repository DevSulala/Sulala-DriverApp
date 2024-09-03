import 'package:sulala_driver_app/core/models/error_model.dart';

enum ApiResponseStatus { success, failed }

class ApiResponseModel<T> {
  final ApiResponseStatus status;
  // final int code;
  final ErrorModel? error;
  final T? data;

  ApiResponseModel({
    required this.status,
    this.error,
    // required this.code,
    this.data,
  });
  bool get hasData => data != null;
  bool get success => status == ApiResponseStatus.success;

  factory ApiResponseModel.fromJson(Map<String, dynamic> json) {
    return ApiResponseModel(
      status: parseApiResponseStatus(json['status'] ?? ""),
      error: json['error'] != null ? ErrorModel.fromJson(json['error']) : null,
      // code: (json['response_code'] as num).toInt(),
      // message: json['message'] as String?,
      data: parseTResult<T>(json['data']),
    );
  }

  static T parseTResult<T>(Map<String, dynamic> data) {
    throw Exception("Unknown type");
  }

  static ApiResponseStatus parseApiResponseStatus(String status) {
    switch (status) {
      case 'success':
        return ApiResponseStatus.success;
      case 'error':
        return ApiResponseStatus.failed;
      default:
        throw ArgumentError('Invalid ApiResponseStatus: $status');
    }
  }
}
