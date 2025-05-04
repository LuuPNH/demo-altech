// Package imports:
import 'package:dio/dio.dart';

abstract class BaseInterceptor extends InterceptorsWrapper {
  static const basicAuthPriority = 40;
  static const headerPriority = 19;

  /// higher, add first
  /// lower, add last
  int get priority;
}
