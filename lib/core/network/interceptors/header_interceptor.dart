import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../constants/constants.dart';
import '../../local_data/local_data_repository.dart';
import 'base_interceptor.dart';

@Injectable()
class HeaderInterceptor extends BaseInterceptor {
  HeaderInterceptor(this._localDataRepository);

  Map<String, dynamic> _headers = {};
  final LocalDataRepository _localDataRepository;

  @override
  int get priority => BaseInterceptor.headerPriority;

  set headers(Map<String, dynamic> headers) {
    _headers = headers;
  }

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (_localDataRepository.token.isNotEmpty) {
      options.headers[ServerRequestResponseConstants.basicAuthorization] =
          '${ServerRequestResponseConstants.bearer} ${_localDataRepository.token}';
    }
    _headers[ServerRequestResponseConstants.accept] =
        ServerRequestResponseConstants.applicationJson;
    _headers[ServerRequestResponseConstants.contentType] =
        ServerRequestResponseConstants.applicationJson;

    options.headers.addAll(_headers);

    handler.next(options);
  }
}
