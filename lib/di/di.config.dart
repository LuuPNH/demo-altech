// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:demo_app/core/local_data/local_data_repository.dart' as _i765;
import 'package:demo_app/core/network/base_url.dart' as _i19;
import 'package:demo_app/core/network/dio_request.dart' as _i535;
import 'package:demo_app/core/network/interceptors/header_interceptor.dart'
    as _i884;
import 'package:demo_app/features/word_pair/data/data_sources/word_pair_data_source.dart'
    as _i143;
import 'package:demo_app/features/word_pair/data/repositories/word_pair_repository_impl.dart'
    as _i1016;
import 'package:demo_app/features/word_pair/domain/repositories/word_pair_repository.dart'
    as _i727;
import 'package:demo_app/features/word_pair/domain/usecases/check_matches_use_case.dart'
    as _i811;
import 'package:demo_app/features/word_pair/domain/usecases/shuffle_words_use_case.dart'
    as _i909;
import 'package:demo_app/features/word_pair/domain/usecases/usecases.dart'
    as _i700;
import 'package:demo_app/features/word_pair/presentation/bloc/word_pair_bloc.dart'
    as _i138;
import 'package:encrypt_shared_preferences/provider.dart' as _i930;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

const String _test = 'test';
const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i811.CheckMatchesUseCase>(
      () => const _i811.CheckMatchesUseCase(),
    );
    gh.singleton<_i19.BaseUrl>(() => _i19.BaseUrlTest(), registerFor: {_test});
    gh.singleton<_i19.BaseUrl>(() => _i19.BaseUrlDev(), registerFor: {_dev});
    gh.singleton<_i19.BaseUrl>(() => _i19.BaseUrlProd(), registerFor: {_prod});
    gh.lazySingleton<_i765.LocalDataRepository>(
      () => _i765.LocalDataRepository(
        sharedPreferences: gh<_i460.SharedPreferences>(),
        encryptedSharedPreferences: gh<_i930.EncryptedSharedPreferences>(),
      ),
    );
    gh.factory<_i884.HeaderInterceptor>(
      () => _i884.HeaderInterceptor(gh<_i765.LocalDataRepository>()),
    );
    gh.lazySingleton<_i535.DioRequest>(
      () => _i535.DioRequest(gh<_i19.BaseUrl>(), gh<_i884.HeaderInterceptor>()),
    );
    gh.lazySingleton<_i143.WordPairDataSource>(
      () => _i143.WordPairDataSourceImpl(dioRequest: gh<_i535.DioRequest>()),
    );
    gh.lazySingleton<_i727.WordPairRepository>(
      () => _i1016.WordPairRepositoryImpl(gh<_i143.WordPairDataSource>()),
    );
    gh.factory<_i909.ShuffleWordsUseCase>(
      () => _i909.ShuffleWordsUseCase(gh<_i727.WordPairRepository>()),
    );
    gh.factory<_i138.WordPairBloc>(
      () => _i138.WordPairBloc(gh<_i700.ShuffleWordsUseCase>()),
    );
    return this;
  }
}
