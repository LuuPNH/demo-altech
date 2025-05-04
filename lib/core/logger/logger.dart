import 'package:flutter/material.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

class Logger {
  static final talker = Talker(
    settings: TalkerSettings(colors: {TalkerLogType.verbose.key: AnsiPen()..yellow()}),
  );

  static NavigatorObserver get talkerRouteObserver => TalkerRouteObserver(talker);

  static TalkerDioLogger get talkerDioInterceptor => TalkerDioLogger(
    talker: talker,
    settings: const TalkerDioLoggerSettings(
      printResponseMessage: true,
      printResponseData: true,
      printRequestData: false,
      printResponseHeaders: true,
      printRequestHeaders: false,
    ),
  );

  static TalkerBlocObserver get talkerBlocObserver => TalkerBlocObserver(talker: talker);
}
