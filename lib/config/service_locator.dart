import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/core/external/connectivity/check_connectivity.dart';
import 'package:you/core/external/connectivity/data_connection_checker.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/all_news/presentation/screens/blocs/cubit/newstopics_cubit.dart';
import 'package:you/features/all_news/services/NewsTopicsRepository.dart';
import 'package:you/features/all_utils/cubit/unitcategories_cubit.dart';
import 'package:you/features/all_utils/repo/ForexRepo.dart';
import 'package:you/features/all_utils/repo/KalimatiVegtableData.dart';
import 'package:you/features/all_utils/repo/cubit/note_cubit.dart';
import 'package:you/features/authentication/data/data_source/AuthLocalDataSource.dart';
import 'package:you/features/authentication/data/repositories/AuthRepositoryImpl.dart';
import 'package:you/features/authentication/domain/repositories/AuthRepository.dart';
import 'package:you/features/authentication/domain/usecases/GetUserProfile.dart';
import 'package:you/features/authentication/domain/usecases/Login.dart';
import 'package:you/features/authentication/domain/usecases/Register.dart';
import 'package:you/features/authentication/domain/usecases/SocialsAuthentication.dart';
import 'package:you/features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'package:you/features/authentication/presentation/blocs/login/login_bloc.dart';
import 'package:you/features/authentication/presentation/blocs/signup/signup_cubit.dart';
import 'package:you/features/calender/presentations/cubits/calender_tithis/calender_tithis_cubit.dart';
import 'package:you/features/calender/repositories/calender_holiday_events_repo.dart';
import 'package:you/features/home/presentation/blocs/breaking_news/breaking_news_cubit.dart';
import 'package:you/features/calender/repositories/calender_events.dart';
import 'package:you/features/localization_manager/bloc/localization_manager_bloc.dart';
import 'package:you/features/fetch_followed_news_sources/presentations/cubit/fetchfollowednewsauth_cubit.dart';
import 'package:you/features/fetch_followed_news_sources/repositories/FollowedNewsSourcesRepo.dart';
import 'package:you/features/category_wise_news/presentation/service/allnewscategories/unauthenticatednewscategories_cubit.dart';
import 'package:you/features/category_wise_news/presentation/service/cubit/categorical_news_cubit.dart';
import 'package:you/features/category_wise_news/repository/CategoryWiseNews.dart';
import 'package:you/features/category_wise_news/repository/NewsCategoryRepository.dart';
import 'package:you/features/latest_news/presentation/service/cubit/latest_news_cubit.dart';
import 'package:you/features/latest_news/repository/LatestNewsService.dart';
import 'package:you/features/latest_videos/presentations/blocs/all_video_listing/all_video_listing_cubit.dart';
import 'package:you/features/latest_videos/presentations/blocs/publisher_video_listing/publisher_video_cubit.dart';
import 'package:you/features/latest_videos/presentations/blocs/video_details/video_details_cubit.dart';
import 'package:you/features/latest_videos/services/GetVideos.dart';
import 'package:you/features/news_sources/presentation/news_sources/newssources_cubit.dart';
import 'package:you/features/news_sources/repositories/NewsSourcesRepo.dart';
import 'package:you/features/profile/presentation/cubits/activity_logs/activitylogs_cubit.dart';
import 'package:you/features/profile/presentation/cubits/profile/profile_cubit.dart';
import 'package:you/features/profile/presentation/cubits/saved_news/cubit/saved_news_cubit.dart';
import 'package:you/features/profile/repositories/activity_timeline.dart';
import 'package:you/features/profile/repositories/saved_news.dart';
import 'package:you/features/publisher_profile_subscriber_perspective/presentation/cubits/publisherdetails/publisherdetails_cubit.dart';
import 'package:you/features/publisher_profile_subscriber_perspective/presentation/cubits/publishernews/publisher_news_cubit.dart';
import 'package:you/features/publisher_profile_subscriber_perspective/repositories/PublisherRepository.dart';
import 'package:you/features/radios/presentations/cubits/favorite_radio/favorite_radio_cubit.dart';
import 'package:you/features/radios/presentations/cubits/radio_cubit/radio_cubit.dart';
import 'package:you/features/radios/presentations/cubits/radiostationListing/radiostationslisting_cubit.dart';
import 'package:you/features/radios/services/RadioServices.dart';
import 'package:you/features/single_news_handler/presentation/cubits/comment-cubit/comment_cubit.dart';
import 'package:you/features/single_news_handler/presentation/cubits/singlenewshandler/singlenewshandler_cubit.dart';
import 'package:you/features/single_news_handler/repository/CommentsHandler.dart';
import 'package:you/features/single_news_handler/repository/SingleNewsHandler.dart';
import 'package:you/features/trending_news/presentation/cubit/trending_news_cubit.dart';
import 'package:you/features/trending_news/repository/TrendingNewsRepo.dart';
import 'package:you/features/news_language/presentation/cubit/news_languages_cubit.dart';
import 'package:you/features/news_language/repository/NewsLanguageRepository.dart';
import 'package:you/features/theme_manager/bloc/theme_manager_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:you/features/weather/presentations/blocs/cubit/weather_cubit.dart';
import 'package:you/features/weather/repositories/weather_repositories.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  _initBlocs();
  _initRepositories();
  await _initExternalResources();
  _utilsInitial();
  _localDataSource();
}

void _initBlocs() {
  _initThemeManager();
  _initLocaleManager();
  sl.registerFactory(() => LatestNewsCubit(repository: sl()));
  sl.registerFactory(
      () => CategoricalNewsCubit(repository: sl(), sharedPreferences: sl()));
  sl.registerFactory(
      () => UnauthenticatednewscategoriesCubit(repository: sl()));

  sl.registerFactory(() => UnitcategoriesCubit(forexRepo: sl()));

  sl.registerFactory(() => SinglenewshandlerCubit(sl()));

  sl.registerFactory(() => BreakingNewsCubit(breakingNewsRepo: sl()));

  sl.registerFactory(() => TrendingNewsCubit(trendingNewsRepo: sl()));

  sl.registerFactory(() => AuthCubit(
      flutterSecureStorage: sl(),
      sharedPreferences: sl(),
      userProfileUseCase: sl()));

  sl.registerFactory(
      () => LoginBloc(loginUsecase: sl(), socialsAuthentication: sl()));

  sl.registerFactory(
      () => SignupCubit(usecase: sl(), socialsAuthentication: sl()));

  sl.registerFactory(() => NoteCubit());

  sl.registerFactory(() => CommentCubit(commentHandler: sl()));

  sl.registerFactory(() => PublisherNewsCubit(repository: sl()));

  sl.registerFactory(() => PublisherdetailsCubit(repository: sl()));

  sl.registerFactory(() => AllVideoListingCubit(getVideosRepo: sl()));

  sl.registerFactory(() => PublisherVideoCubit(getVideosRepo: sl()));

  sl.registerFactory(() => VideoDetailsCubit());

  sl.registerFactory(() => RadiostationslistingCubit(radioServices: sl()));

  sl.registerFactory(() => RadioCubit());

  sl.registerFactory(() => FavoriteRadioCubit(sl()));

  sl.registerFactory(() => NewssourcesCubit(getNewsSources: sl()));

  sl.registerFactory(() => NewsLanguagesCubit(repository: sl()));

  sl.registerFactory(
      () => FetchfollowednewsauthCubit(followedNewsSoourcesRepo: sl()));

  sl.registerFactory(() => WeatherCubit(weatherRepositories: sl()));

  sl.registerFactory(() => NewstopicsCubit(repository: sl()));

  sl.registerFactory(() => ActivitylogsCubit(repository: sl()));
  sl.registerFactory(() => SavedNewsCubit(repository: sl()));

  sl.registerFactory(() => CalenderTithisCubit(
      calenderDateRepository: sl(), calenderHolidayRepo: sl()));

  sl.registerFactory(() => ProfileCubit(httpCalls: sl()));
}

void _initThemeManager() {
  sl.registerFactory(() => ThemeManagerBloc(sharedPreferences: sl()));
}

void _initLocaleManager() {
  sl.registerFactory(() => LocalizationManagerBloc(sharedPreferences: sl()));
}

void _utilsInitial() {
  sl.registerFactory(() => KalimatiVegtablePriceProvider(sl()));

  sl.registerLazySingleton(() => ForexRepo(httpCalls: sl()));
}

void _initRepositories() {
  sl.registerLazySingleton(() => LatestNewsRepository(httpCalls: sl()));
  sl.registerLazySingleton(
      () => NewsCategoryRepository(httpCalls: sl(), sharedPreferences: sl()));

  sl.registerLazySingleton(() => SingleNewsHanlderRepository(sl()));

  sl.registerLazySingleton(() => TrendingNewsRepo(httpCalls: sl()));

  sl.registerLazySingleton(() => Login(authRepository: sl()));
  sl.registerLazySingleton(() => RegisterUsecase(authRepository: sl()));
  sl.registerLazySingleton(() => GetUserProfile(authRepository: sl()));

  sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(httpCalls: sl(), authLocalDataSource: sl()));

  sl.registerLazySingleton(() => CommentHandler(httpCalls: sl()));

  sl.registerLazySingleton(() => PublisherRepository(httpCalls: sl()));

  sl.registerLazySingleton(() => CategoryWiseNewsRepository(httpCalls: sl()));

  sl.registerLazySingleton(() => GetVideosRepo(httpCalls: sl()));

  sl.registerLazySingleton(() => RadioServices(httpCalls: sl()));

  sl.registerLazySingleton(() => SocialsAuthentication(httpCalls: sl()));

  sl.registerLazySingleton(() => GetNewsSources(httpCalls: sl()));

  sl.registerLazySingleton(
      () => NewsLanguageRepository(httpCalls: sl(), sharedPreferences: sl()));

  sl.registerLazySingleton(() => FollowedNewsSoourcesRepo(httpCalls: sl()));

  sl.registerLazySingleton(() => WeatherRepositories(httpCalls: sl()));

  sl.registerLazySingleton(
      () => NewsTopicsRepository(httpCalls: sl(), sharedPreferences: sl()));

  sl.registerLazySingleton(() => ActivityRepository(httpCalls: sl()));

  sl.registerLazySingleton(() => SavedNewsRepository(httpCalls: sl()));

  sl.registerLazySingleton(
      () => CalenderDateRepository(httpCalls: sl(), sharedPreferences: sl()));

  sl.registerLazySingleton(
      () => CalenderHolidayRepo(httpCalls: sl(), sharedPreferences: sl()));
}

void _localDataSource() {
  sl.registerLazySingleton(() => AuthLocalDataSource(sharedPreferences: sl()));
}

Future<void> _initExternalResources() async {
  //shared preferences
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  sl.registerLazySingleton(() => http.Client());

  if (!kIsWeb) sl.registerLazySingleton(() => DataConnectionChecker());

  sl.registerLazySingleton(() => FlutterSecureStorage());

  sl.registerLazySingleton<NetWorkInfo>(
      () => NetworkInfoImpl(dataConnectionChecker: kIsWeb ? null : sl()));

  sl.registerLazySingleton(() => HttpCalls(
      sharedPreferences: sl(),
      flutterSecureStorage: sl(),
      httpClient: sl(),
      netWorkInfo: sl()));
}
