import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../constants/constants.dart';
import '../logger/logger.dart';
import 'base_url.dart';
import 'interceptors/header_interceptor.dart';

@lazySingleton
class DioRequest {
  DioRequest(this._baseUrl, this._headerInterceptor) {
    if (_baseUrl.url.isEmpty) {
      throw ArgumentError('Base URL cannot be empty');
    }

    _dio = Dio(
      BaseOptions(
        connectTimeout: ServerTimeoutConstants.connectTimeout,
        receiveTimeout: ServerTimeoutConstants.receiveTimeout,
        sendTimeout: ServerTimeoutConstants.sendTimeout,
        baseUrl: _baseUrl.url,
      ),
    );

    _dio.interceptors.addAll([
      _headerInterceptor,
      Logger.talkerDioInterceptor,
      // Add other interceptors here
    ]);
  }

  late final Dio _dio;
  final BaseUrl _baseUrl;
  final HeaderInterceptor _headerInterceptor;

  Future<Response> request({
    required Method method,
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
  }) async {
    try {
      return await _executeRequest(method, queryParameters, data, options);
    } on DioException catch (e) {
      throw _extractDioError(e);
    }
  }

  Future<Response> _executeRequest(
    Method method,
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
  ) {
    switch (method.runtimeType) {
      case POST _:
        return _dio.post(
          method.path,
          data: data,
          queryParameters: queryParameters,
          options: options,
        );
      case GET _:
        return _dio.get(method.path, queryParameters: queryParameters, options: options);
      case PUT _:
        return _dio.put(
          method.path,
          data: data,
          queryParameters: queryParameters,
          options: options,
        );
      case DELETE _:
        return _dio.delete(
          method.path,
          data: data,
          queryParameters: queryParameters,
          options: options,
        );
      case PATCH _:
        return _dio.patch(
          method.path,
          data: data,
          queryParameters: queryParameters,
          options: options,
        );
      default:
        throw UnsupportedError('Unsupported method type: ${method.runtimeType}');
    }
  }

  Object _extractDioError(DioException e) {
    if (e.type != DioExceptionType.unknown) {
      return e.response?.data?['message'] ?? e.response?.statusMessage ?? e.message ?? e;
    }
    return e;
  }
}

abstract class Method {
  String path;

  Method(this.path);

  void setPath(String key, String value) {
    path = path.replaceAll(key, value);
  }

  Method addPath(String path) {
    this.path += path;
    return this;
  }
}

class POST extends Method {
  POST(super.path);
}

class GET extends Method {
  GET(super.path);
}

class PUT extends Method {
  PUT(super.path);
}

class PATCH extends Method {
  PATCH(super.path);
}

class DELETE extends Method {
  DELETE(super.path);
}

class OPTIONS extends Method {
  OPTIONS(super.path);
}
