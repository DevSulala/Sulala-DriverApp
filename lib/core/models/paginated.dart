class Paginated<T> {
  final int count;
  final dynamic next;
  final dynamic previous;
  final List<T> results;

  const Paginated({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory Paginated.initial() =>
      const Paginated(count: 0, next: null, previous: null, results: []);

  factory Paginated.fromJson(Map<String, dynamic> json) {
    return Paginated(
      count: json['count'],
      next: json['next'],
      previous: json['previous'],
      results: json["results"] is List && (json["results"] as List).isNotEmpty
          ? List<T>.from(json["results"].map((x) => parseTResult<T>(x)))
          : [],
    );
  }

  static T parseTResult<T>(Map<String, dynamic> data) {
    throw Exception("Paginated data unknown type");
  }

  // copyWith
  Paginated<T> copyWith({
    int? count,
    dynamic next,
    dynamic previous,
    List<T>? results,
  }) =>
      Paginated<T>(
          count: count ?? this.count,
          next: next ?? this.next,
          previous: previous ?? this.previous,
          results: results ?? this.results);
}
