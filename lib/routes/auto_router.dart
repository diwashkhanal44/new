import 'package:auto_route/auto_route.dart';
import 'package:you/features/all_news/presentation/screens/AllNewsScreen.dart';
import 'package:you/features/all_utils/utilities/CurrencyForex.dart';
import 'package:you/features/all_utils/utils.dart';
import 'package:you/features/app/App.dart';
import 'package:you/features/authentication/presentation/screens/LoginScreen.dart';
import 'package:you/features/authentication/presentation/screens/RegisterScreen.dart';
import 'package:you/features/home/presentation/screens/HomePage.dart';
import 'package:you/features/latest_videos/presentations/screens/video_listing.dart';
import 'package:you/features/latest_videos/presentations/screens/video_player_detail.dart';
import 'package:you/features/personalization_options/presentation/screens/Personalization.dart';
import 'package:you/features/profile/presentation/screens/ProfileScreen.dart';
import 'package:you/features/profile/presentation/screens/edit_profile.dart';
import 'package:you/features/publisher_profile_subscriber_perspective/presentation/screens/PublisherPage.dart';
import 'package:you/features/radios/presentations/screens/RadioListing.dart';
import 'package:you/features/radios/presentations/screens/RadioStationDetails.dart';
import 'package:you/features/single_news_handler/presentation/screens/CreateCommentScreen.dart';
import 'package:you/features/single_news_handler/presentation/screens/MainCommentsListing.dart';
import 'package:you/features/single_news_handler/presentation/screens/ReplyCommentListing.dart';
import 'package:you/features/webview/NewsWebView.dart';
import 'package:you/features/your_interest/presentation/screens/YourInterestHome.dart';
import 'package:you/routes/route_guards.dart';
//import 'package:animated_splash_screen/animated_splash_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  // durationInMilliseconds: 100,
  // transitionsBuilder: TransitionsBuilders.zoomIn,
  routes: <AutoRoute>[
    AutoRoute(path: '', page: App, initial: true, children: [
      AutoRoute(page: HomePage, initial: true, path: ''),
      AutoRoute(page: YourInterestHome),
      AutoRoute(page: AllNewsScreen),
      AutoRoute(page: NewsWebView),
      AutoRoute(page: PersonalizationScreen),
      AutoRoute(page: LoginScreen),
      AutoRoute(page: ProfileEdit),
      AutoRoute(page: SignupScreen),
      AutoRoute(page: ProfileScreen, guards: [AuthenticatedGuard]),
      AutoRoute(page: MainCommentsListing),
      AutoRoute(page: ReplyCommentListing),
      AutoRoute(page: CreateNewComment, guards: [AuthenticatedGuard]),
      AutoRoute(page: PublisherPage),
      AutoRoute(page: LatestVideoListing),
      AutoRoute(page: VideoPlayerView),
      AutoRoute(page: RadioListing),
      AutoRoute(page: RadioStationDetails),
      AutoRoute(page: AllUtilsWrapper, children: [
        AutoRoute(page: Utilities, initial: true, path: ''),
        AutoRoute(
          page: QRBarcodeScreen,
          name: "UTILS_QR_SCANNER_SCREEN",
          path: "UTILS_QR_SCANNER_SCREEN",
        ),
        AutoRoute(
            page: CompassPage,
            path: "UTILS_COMPASS_SCREEN",
            name: "UTILS_COMPASS_SCREEN"),
        AutoRoute(
          page: DateConverison,
          path: "UTILS_DATE_CONVERTER_SCREEN",
          name: "UTILS_DATE_CONVERTER_SCREEN",
        ),
        AutoRoute(
          page: UnitConverter,
          path: "UTILS_DATA_CONVETER_SCREEN/:categoryIndex",
          name: "UTILS_DATA_CONVETER_SCREEN",
        ),
        AutoRoute(
            page: AgeCalculator,
            path: "UTILS_AGE_CALCULATOR_SCREEN",
            name: "UTILS_AGE_CALCULATOR_SCREEN"),
        AutoRoute(
          page: DiscountScreen,
          path: "UTILS_DISCOUNT_CALCULATOR_SCREEN",
          name: "UTILS_DISCOUNT_CALCULATOR_SCREEN",
        ),
        AutoRoute(
          page: InputPageBmi,
          path: "UTILS_BMI_CALULATER_SCREEN",
          name: "UTILS_BMI_CALULATER_SCREEN",
        ),
        AutoRoute(page: ResultPage),
        AutoRoute(
          page: UnitConverter,
          path: "UTILS_LENGTH_CONVERTER_SCREEN/:categoryIndex",
          name: "UTILS_LENGTH_CONVERTER_SCREEN",
        ),
        AutoRoute(
          page: UnitConverter,
          path: "UTILS_AREA_CALCULATOR_SCREEN/:categoryIndex",
          name: "UTILS_AREA_CALCULATOR_SCREEN",
        ),
        AutoRoute(
          page: UnitConverter,
          path: "UTILS_VOLUME_CALCULATOR_SCREEN/:categoryIndex",
          name: "UTILS_VOLUME_CALCULATOR_SCREEN",
        ),
        AutoRoute(
          page: UnitConverter,
          path: "UTILS_SPEED_CALCULATOR_SCREEN/:categoryIndex",
          name: "UTILS_SPEED_CALCULATOR_SCREEN",
        ),
        AutoRoute(
          page: UnitConverter,
          path: "UTILS_TIME_CALCULATOR_SCREEN/:categoryIndex",
          name: "UTILS_TIME_CALCULATOR_SCREEN",
        ),
        AutoRoute(
          page: UnitConverter,
          path: "UTILS_WEIGHT_CALCULATOR_SCREEN/:categoryIndex",
          name: "UTILS_WEIGHT_CALCULATOR_SCREEN",
        ),
        AutoRoute(
          page: NumericalSystemScreen,
          path: "UTILS_NUMEBER_STYSTEM_SCREEN",
          name: "UTILS_NUMEBER_STYSTEM_SCREEN",
        ),
        AutoRoute(
          page: TemperatureScreen,
          path: "UTILS_TEMP_CONVERTER_SCREEN",
          name: "UTILS_TEMP_CONVERTER_SCREEN",
        ),
        AutoRoute(
          page: KalimatiVegetables,
          path: "UTILS_KALIMATI_VEGTABLE_SCREEN",
          name: "UTILS_KALIMATI_VEGTABLE_SCREEN",
        ),
        AutoRoute(
          page: UnitConverter,
          path: "UTILS_ENERGY_CONVERTER_SCREEN/:categoryIndex",
          name: "UTILS_ENERGY_CONVERTER_SCREEN",
        ),
        AutoRoute(
          page: UnitConverter,
          path: "UTILS_CURRENCY_CONVERTER_SCREEN/:categoryIndex",
          name: "UTILS_CURRENCY_CONVERTER_SCREEN",
        ),
        AutoRoute(
            page: MetalForex,
            path: "UTILS_METAL_FOREX",
            name: "UTILS_METAL_FOREX"),
        AutoRoute(
            page: CurrencyForexScreen,
            path: "UTILS_CURRENCY_FOREX",
            name: "UTILS_CURRECNY_FOREX"),
        AutoRoute(page: NotesScreen),
        AutoRoute(page: CreateUpdateNotes),
      ])
    ])
  ],
)
class $AppRouter {}
