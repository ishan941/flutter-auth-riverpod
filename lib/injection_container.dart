import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nepstayapp/core/networkinfo/network_info.dart';
import 'package:nepstayapp/core/token_service/services/token_service.dart';
import 'package:nepstayapp/core/utils/dio_http.dart';
import 'package:nepstayapp/core/utils/shared_preference.dart';
import 'package:nepstayapp/features/Auth/data/datasource/auth_data_source.dart';
import 'package:nepstayapp/features/Auth/data/repository_impl/auth_repository_impl.dart';
import 'package:nepstayapp/features/Auth/domain/repository/auth_repository.dart';
import 'package:nepstayapp/features/Auth/domain/service/user_hive_service.dart';
import 'package:nepstayapp/features/Auth/domain/usecase/login_use_case.dart';
import 'package:nepstayapp/features/Auth/presentation/provider/auth_notifier.dart';
import 'package:nepstayapp/features/Home/data/datasource/property_data_source.dart';
import 'package:nepstayapp/features/Home/data/repository_impl/property_repository_impl.dart';
import 'package:nepstayapp/features/Home/domain/repository/property_repository.dart';
import 'package:nepstayapp/features/Home/domain/usecase/get_property_details_use_case.dart';
import 'package:nepstayapp/features/Home/domain/usecase/get_property_use_case.dart';
import 'package:nepstayapp/features/Home/presentation/notifier/home_notifier.dart';
import 'package:nepstayapp/features/profile/data/datasource_impl/profile_datasource.dart';
import 'package:nepstayapp/features/profile/data/repo_impl/profile_repository_impl.dart';
import 'package:nepstayapp/features/profile/domain/repository/profile_repository.dart';
import 'package:nepstayapp/features/profile/domain/usecase/get_use_case/get_profile_usecase.dart';
import 'package:nepstayapp/features/profile/domain/usecase/post_use_case/post_update_use_case.dart';
import 'package:nepstayapp/features/profile/domain/usecase/post_use_case/verify_use_case.dart';
import 'package:nepstayapp/features/profile/presentation/notifier/profile_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;
//Enternal
void registerExternal() async {
  try {
    final sharedPreferences = await SharedPreferences.getInstance();
    sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  } catch (e) {
    throw Exception("Failed to initialize SharedPreferences: $e");
  }
  sl.registerLazySingleton<Dio>(() => Dio());
  sl.registerLazySingleton<Connectivity>(() => Connectivity());
}

//core
void registerCore() {
  sl.registerLazySingleton<DioHttp>(() => DioHttp(
        dio: sl(),
      ));
  sl.registerLazySingleton<SharedPref>(() => SharedPref(sp: sl()));
  sl.registerLazySingleton<TokenService>(() => TokenService(sharedPref: sl()));
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
}

//
//Data source
void registerDataSource() {
  sl.registerLazySingleton<UserHiveService>(() => UserHiveService());

  sl.registerLazySingleton<AuthDataSource>(
      () => AuthDataSourceImpl(dioHttp: sl(), userHiveService: sl()));
  sl.registerLazySingleton<PropertyDataSource>(
      () => PropertyDataSourceImpl(dioHttp: sl()));
  sl.registerLazySingleton<ProfileDatasource>(
      () => ProfileDataSouceImpl(dioHttp: sl()));
  // sl.registerLazySingleton<ListingDataSource>(
  //     () => ListingDataSourceImpl(dioHttp: sl()));
}

//
// Repository
void registerRepository() {
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
        authDataSource: sl(),
        networkInfo: sl(),
      ));
  sl.registerLazySingleton<PropertyRepository>(() => PropertyRepositoryImpl(
        propertyDataSource: sl(),
        networkInfo: sl(),
        tService: sl(),
      ));
  sl.registerLazySingleton<ProfileRepository>(() => ProfileRepositoryImpl(
        networkInfo: sl(),
        tService: sl(),
        profileDatasource: sl(),
      ));
}

//
// Usecase
void registerUseCases() {
  //GetuseCase
  sl.registerLazySingleton<GetPropertyUseCase>(
      () => GetPropertyUseCase(propertyRepository: sl()));
  sl.registerLazySingleton<GetPropertyDetailUseCase>(
      () => GetPropertyDetailUseCase(propertyRepository: sl()));
  sl.registerLazySingleton<GetProfileUsecase>(
      () => GetProfileUsecase(profileRepository: sl()));
  //Post usecase
  sl.registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(authRepository: sl()));
  sl.registerLazySingleton<SignUpUserUseCase>(
      () => SignUpUserUseCase(authRepository: sl()));
  sl.registerLazySingleton<VerifyEmailUseCase>(
      () => VerifyEmailUseCase(authRepository: sl()));
  sl.registerLazySingleton<SendOtpTpEmailUseCase>(
      () => SendOtpTpEmailUseCase(authRepository: sl()));
  sl.registerLazySingleton<PostUpdateUseCase>(
      () => PostUpdateUseCase(profileRepository: sl()));
  sl.registerLazySingleton<VerifyUseCase>(
      () => VerifyUseCase(profilerepo: sl()));

  //Delete Usecase
}

//
// Notifier
void registerNotifier() {
  sl.registerFactory(() => AuthNotifier(
        loginUseCase: sl(),
        signUpUserUseCase: sl(),
        sharedPref: sl(),
        verifyEmailUseCase: sl(),
        sendOtpTpEmailUseCase: sl(),
        service: sl(),
      ));
  sl.registerFactory(() => PropertyNotifier(getPropertyUseCase: sl()));
  sl.registerFactory(() => ProfileNotifier(
      getProfileUsecase: sl(), postUpdateUseCase: sl(), verifyUseCase: sl()));
}

Future<void> init() async {
  registerExternal();
  registerCore();
  registerDataSource();
  registerRepository();
  registerUseCases();
  registerNotifier();
}
