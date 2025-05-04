import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final GetIt sl = GetIt.instance;

@injectableInit
void configureInjection(String env) => sl.init(environment: env);

