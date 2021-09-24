import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/core/shared_widgets/shared_widget.dart';
import 'package:you/features/all_news/presentation/screens/blocs/cubit/newstopics_cubit.dart';
import 'package:you/features/all_utils/cubit/unitcategories_cubit.dart';
import 'package:you/features/all_utils/repo/cubit/note_cubit.dart';
import 'package:you/features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'package:you/features/calender/presentations/cubits/calender_tithis/calender_tithis_cubit.dart';
import 'package:you/features/home/presentation/blocs/breaking_news/breaking_news_cubit.dart';
import 'package:you/features/fetch_followed_news_sources/presentations/cubit/fetchfollowednewsauth_cubit.dart';
import 'package:you/features/category_wise_news/presentation/service/allnewscategories/unauthenticatednewscategories_cubit.dart';
import 'package:you/features/latest_news/presentation/service/cubit/latest_news_cubit.dart';
import 'package:you/features/latest_videos/presentations/blocs/all_video_listing/all_video_listing_cubit.dart';
import 'package:you/features/latest_videos/presentations/blocs/video_details/video_details_cubit.dart';
import 'package:you/features/news_sources/presentation/news_sources/newssources_cubit.dart';
import 'package:you/features/profile/presentation/cubits/activity_logs/activitylogs_cubit.dart';
import 'package:you/features/profile/presentation/cubits/saved_news/cubit/saved_news_cubit.dart';
import 'package:you/features/radios/presentations/cubits/favorite_radio/favorite_radio_cubit.dart';
import 'package:you/features/radios/presentations/cubits/radio_cubit/radio_cubit.dart';
import 'package:you/features/radios/presentations/cubits/radiostationListing/radiostationslisting_cubit.dart';
import 'package:you/features/trending_news/presentation/cubit/trending_news_cubit.dart';
import 'package:you/features/news_language/presentation/cubit/news_languages_cubit.dart';
import 'package:you/features/weather/presentations/blocs/cubit/weather_cubit.dart';
//import 'package:animated_splash_screen/animated_splash_screen.dart';

// every route goes from here
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    // checking auth status
    BlocProvider.of<AuthCubit>(context).checkAuthState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<VideoDetailsCubit>()),
        BlocProvider(create: (context) => sl<AllVideoListingCubit>()),
        BlocProvider(create: (context) => sl<LatestNewsCubit>()),
        BlocProvider(create: (context) => sl<TrendingNewsCubit>()),
        BlocProvider(create: (context) => sl<BreakingNewsCubit>()),
        BlocProvider(create: (context) => sl<UnitcategoriesCubit>()),
        BlocProvider(create: (context) => sl<NoteCubit>()),
        BlocProvider(create: (context) => sl<RadioCubit>()),
        BlocProvider(create: (context) => sl<NewssourcesCubit>()),
        BlocProvider(create: (context) => sl<NewsLanguagesCubit>()),
        BlocProvider(create: (context) => sl<FetchfollowednewsauthCubit>()),
        BlocProvider(create: (context) => sl<FavoriteRadioCubit>()),
        BlocProvider(create: (context) => sl<WeatherCubit>()),
        BlocProvider(create: (context) => sl<NewstopicsCubit>()),
        BlocProvider(create: (context) => sl<SavedNewsCubit>()),
        BlocProvider(create: (context) => sl<CalenderTithisCubit>()),
        BlocProvider(create: (context) => sl<ActivitylogsCubit>()),
        BlocProvider(create: (context) => sl<RadiostationslistingCubit>()),
        BlocProvider(
            create: (context) => sl<UnauthenticatednewscategoriesCubit>()),
      ],
      child: ScrollConfiguration(
        behavior: NoGlow(),
        child: AutoRouter(),
      ),
    );
  }
}
