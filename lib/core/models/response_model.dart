class ResponseModel<T> {
  List<T> results;

  ResponseModel({required this.results});

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      results: json["results"] is List && (json["results"] as List).isNotEmpty
          ? List<T>.from(json["results"].map((x) => parseTResult<T>(x)))
          : [],
    );
  }

  static T parseTResult<T>(Map<String, dynamic> data) {
    throw Exception("Unknown type");
  }
}
