import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart' as pretty_logger;

class Logger {
  static final pretty_logger.Logger logger = pretty_logger.Logger(
    printer: pretty_logger.PrettyPrinter(
      printEmojis: true,
      printTime: false,
      colors: true,
      methodCount: 0,
      errorMethodCount: 15,
    ),
  );

  static void trace(dynamic message) {
    if (kDebugMode) {
      logger.t(message);
    }
  }

  static void debug(dynamic message, {DateTime? time}) {
    if (kDebugMode) {
      logger.d(message, time: time ?? DateTime.now());
    }
  }

  static void info(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      logger.i(message, time: time, error: error, stackTrace: stackTrace);
    }
  }

  static void warning(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      logger.w(message, time: time, error: error, stackTrace: stackTrace);
    }
  }

  static void error(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      logger.e(message, time: time, error: error, stackTrace: stackTrace);
    }
    // FirebaseCrashlytics.instance
    //     .recordError(error, stackTrace, reason: message);
  }

  static void wtf(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      logger.f(message, time: time, error: error, stackTrace: stackTrace);
    }
  }
}
