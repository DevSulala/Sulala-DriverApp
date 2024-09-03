enum TokenExceptionEnum {
  noToken,
  invalidToken,
  expiredToken,
  unknown,
}

extension TokenExceptionEnumExtension on TokenExceptionEnum {
  String get value {
    switch (this) {
      case TokenExceptionEnum.noToken:
        return 'No Token';
      case TokenExceptionEnum.invalidToken:
        return 'Invalid Token';
      case TokenExceptionEnum.expiredToken:
        return 'Expired Token';
      case TokenExceptionEnum.unknown:
        return 'Unknown';
    }
  }
}
