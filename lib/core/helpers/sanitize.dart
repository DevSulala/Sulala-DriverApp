Map<String, dynamic> sanitize(Map<String, dynamic> data) => data
  ..removeWhere((key, value) => value == null || value.toString().isEmpty);
