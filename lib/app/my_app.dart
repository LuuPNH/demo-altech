import 'package:encrypt_shared_preferences/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/constants/constants.dart';
import '../core/logger/logger.dart';
import '../di/di.dart' as di;
import '../generated/l10n.dart';
import '../navigation/router_config.dart' as navigation;
import '../resources/styles/styles.dart';
import 'bloc_observer.dart';

void loadApp(String env) async {
  WidgetsFlutterBinding.ensureInitialized();

  await EncryptedSharedPreferences.initialize(
    kEncryptedSharedPreferencesKey,
  );
  final spref = EncryptedSharedPreferences.getInstance();
  di.sl.registerSingletonAsync<EncryptedSharedPreferences>(() async => spref);

  final sharedPreferences = await SharedPreferences.getInstance();
  di.sl.registerSingletonAsync<SharedPreferences>(() async => sharedPreferences);

  di.configureInjection(env);

  Bloc.observer = AppBlocObserver();
  Bloc.observer = Logger.talkerBlocObserver;

  runApp(
    MaterialApp.router(
      routerConfig: navigation.RouterConfig.routeConfig,
      theme: MaterialTheme.light(),
      localizationsDelegates: const [S.delegate],
      supportedLocales: const [
        Locale('en', 'US'), // English
        Locale('vi', 'VN'), // Viet Nam
        // ... other locales the app supports
      ],
      debugShowCheckedModeBanner: false,
    ),
  );
}
