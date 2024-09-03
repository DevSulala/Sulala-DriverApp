class UserSettings {
  final int userId;
  final String? deviceId;
  final bool pauseAllNotifications;
  final bool allowSystemNotification;
  final bool allowCollabNotification;
  final bool allowAnimalManagementNotification;
  final bool allowOtherNotification;
  final bool allowCollabs;
  final bool showAnimalList;
  final bool showFamilyTree;
  final bool showContactInformation;
  final bool showPhoneNumber;
  final bool showEmailAddress;
  final String defaultLanguage;

  UserSettings(
      {required this.userId,
      this.deviceId,
      required this.pauseAllNotifications,
      required this.allowSystemNotification,
      required this.allowCollabNotification,
      required this.allowAnimalManagementNotification,
      required this.allowOtherNotification,
      required this.allowCollabs,
      required this.showAnimalList,
      required this.showFamilyTree,
      required this.showContactInformation,
      required this.showPhoneNumber,
      required this.showEmailAddress,
      required this.defaultLanguage});

  UserSettings copyWith(
          {int? userId,
          String? deviceId,
          bool? pauseAllNotifications,
          bool? allowSystemNotification,
          bool? allowCollabNotification,
          bool? allowAnimalManagementNotification,
          bool? allowOtherNotification,
          bool? allowCollabs,
          bool? showAnimalList,
          bool? showFamilyTree,
          bool? showContactInformation,
          bool? showPhoneNumber,
          bool? showEmailAddress,
          String? defaultLanguage}) =>
      UserSettings(
          userId: userId ?? this.userId,
          deviceId: deviceId ?? this.deviceId,
          pauseAllNotifications:
              pauseAllNotifications ?? this.pauseAllNotifications,
          allowSystemNotification:
              allowSystemNotification ?? this.allowSystemNotification,
          allowCollabNotification:
              allowCollabNotification ?? this.allowCollabNotification,
          allowAnimalManagementNotification:
              allowAnimalManagementNotification ??
                  this.allowAnimalManagementNotification,
          allowOtherNotification:
              allowOtherNotification ?? this.allowOtherNotification,
          allowCollabs: allowCollabs ?? this.allowCollabs,
          showAnimalList: showAnimalList ?? this.showAnimalList,
          showFamilyTree: showFamilyTree ?? this.showFamilyTree,
          showContactInformation:
              showContactInformation ?? this.showContactInformation,
          showPhoneNumber: showPhoneNumber ?? this.showPhoneNumber,
          showEmailAddress: showEmailAddress ?? this.showEmailAddress,
          defaultLanguage: defaultLanguage ?? this.defaultLanguage);

  factory UserSettings.fromJson(Map json) => UserSettings(
      userId: json['user'],
      deviceId: json['device_id'],
      pauseAllNotifications: json['pause_all_notificaitons'],
      allowSystemNotification: json['allow_system_notification'],
      allowCollabNotification: json['allow_collab_notification'],
      allowAnimalManagementNotification:
          json['allow_animal_managment_notification'],
      allowOtherNotification: json['allow_other_notification'],
      allowCollabs: json['allow_collabs'],
      showAnimalList: json['show_animal_list'],
      showFamilyTree: json['show_family_tree'],
      showContactInformation: json['show_contact_information'],
      showPhoneNumber: json['show_phone_number'],
      showEmailAddress: json['show_email_address'],
      defaultLanguage: json['default_language']);

  Map toJson() => {
        'device_id': deviceId,
        'pause_all_notificaitons': pauseAllNotifications,
        'allow_system_notification': allowSystemNotification,
        'allow_collab_notification': allowCollabNotification,
        'allow_animal_managment_notification':
            allowAnimalManagementNotification,
        'allow_other_notification': allowOtherNotification,
        'allow_collabs': allowCollabs,
        'show_animal_list': showAnimalList,
        'show_family_tree': showFamilyTree,
        'show_contact_information': showContactInformation,
        'show_phone_number': showPhoneNumber,
        'show_email_address': showEmailAddress,
        'default_language': defaultLanguage
      };
}
