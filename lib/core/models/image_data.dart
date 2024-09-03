import 'dart:io';

enum ImageSource {
  asset,
  url,
}

class ImageData {
  final ImageSource _source;
  final String? _filePath;
  final String? _url;
  final bool _cached;

  const ImageData({
    required ImageSource source,
    String? filePath,
    String? url,
    bool cached = false,
  })  : _cached = cached,
        _url = url,
        _filePath = filePath,
        _source = source;

  ImageData copyWith({
    ImageSource? source,
    String? filePath,
    String? url,
    bool? cached,
  }) {
    return ImageData(
      source: source ?? _source,
      filePath: filePath ?? _filePath,
      url: url ?? _url,
      cached: cached ?? _cached,
    );
  }

  bool isValidAssetPath() {
    return _source == ImageSource.asset &&
        _filePath != null &&
        File(_filePath!).existsSync();
  }

  static bool sIsValidAssetPath(String? filePath) {
    // TODO: uncomment this. this line checks if file exists.
    // return File(filePath!).existsSync();
    return true;
  }

  bool isValidUrl() {
    return _source == ImageSource.url &&
        _url != null &&
        Uri.parse(_url!).isAbsolute;
  }

  static bool sIsValidImageUrl(String? url) {
    return url != null && Uri.parse(url).isAbsolute;
  }

  factory ImageData.fromAsset(String assetPath) {
    if (!sIsValidAssetPath(assetPath)) {
      throw ArgumentError('Invalid asset path: $assetPath');
    }
    return ImageData(
      source: ImageSource.asset,
      filePath: assetPath,
    );
  }

  factory ImageData.fromUrl(String url) {
    // TODO: uncomment this. this line checks if url is valid. Make sure it will display a placeholder on error.
    // if (!sIsValidImageUrl(url)) {
    //   throw ArgumentError('Invalid URL: $url');
    // }

    return ImageData(
      source: ImageSource.url,
      url: url,
    );
  }

  bool isAsset() {
    return _source == ImageSource.asset;
  }

  bool isUrl() {
    return _source == ImageSource.url;
  }

  String? getCachedFilePath(String cacheDir) {
    if (_source == ImageSource.url && _url != null) {
      final fileName = _url!.split('/').last;
      final path = '$cacheDir/$fileName';
      return File(path).existsSync() ? path : null;
    }
    return null;
  }

  @override
  String toString() {
    return 'ImageData{source: $_source, filePath: $_filePath, url: $_url, cached: $_cached}';
  }

  String? getAssetPath() {
    return _filePath;
  }

  String? getUrl() {
    return _url;
  }
}
