class UserNotification {
  final int? id;
  final String name;
  final String type;
  final String description;
  final DateTime? time;
  final bool? read;

  UserNotification(
      {this.id,
      required this.name,
      required this.type,
      required this.description,
      this.time,
      this.read});

  UserNotification copyWith(
          {int? id,
          String? name,
          String? type,
          String? description,
          Uri? image,
          DateTime? time,
          bool? read}) =>
      UserNotification(
          id: id ?? this.id,
          name: name ?? this.name,
          type: type ?? this.type,
          description: description ?? this.description,
          time: time ?? this.time,
          read: read ?? this.read);

  factory UserNotification.fromJson(Map json) => UserNotification(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      description: json['description'],
      time: DateTime.tryParse(json['created_at'] ?? ''),
      read: json['read']);

  Map toJson() => {'name': name, 'type': type, 'description': description};
}
