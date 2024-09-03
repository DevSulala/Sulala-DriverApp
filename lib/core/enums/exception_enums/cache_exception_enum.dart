enum CacheExceptionEnum {
  noData,
  cacheFailure,
  unknown,
}

extension CacheExceptionEnumExtension on CacheExceptionEnum {
  String get value {
    switch (this) {
      case CacheExceptionEnum.noData:
        return 'Not Found';
      case CacheExceptionEnum.cacheFailure:
        return 'Cache Failure';
      case CacheExceptionEnum.unknown:
        return 'Unknown';
    }
  }
}
