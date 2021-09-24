// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../features/all_news/presentation/screens/AllNewsScreen.dart' as _i7;
import '../features/all_utils/models/NoteModels.dart' as _i28;
import '../features/all_utils/utilities/bmi/utils.dart' as _i27;
import '../features/all_utils/utilities/CurrencyForex.dart' as _i23;
import '../features/all_utils/utils.dart' as _i22;
import '../features/app/App.dart' as _i4;
import '../features/authentication/presentation/screens/LoginScreen.dart'
    as _i10;
import '../features/authentication/presentation/screens/RegisterScreen.dart'
    as _i12;
import '../features/home/presentation/screens/HomePage.dart' as _i5;
import '../features/latest_news/models/NewsModel.dart' as _i24;
import '../features/latest_videos/models/LatestVideos/VideoModel.dart' as _i25;
import '../features/latest_videos/presentations/screens/video_listing.dart'
    as _i18;
import '../features/latest_videos/presentations/screens/video_player_detail.dart'
    as _i19;
import '../features/personalization_options/presentation/screens/Personalization.dart'
    as _i9;
import '../features/profile/presentation/screens/edit_profile.dart' as _i11;
import '../features/profile/presentation/screens/ProfileScreen.dart' as _i13;
import '../features/publisher_profile_subscriber_perspective/presentation/screens/PublisherPage.dart'
    as _i17;
import '../features/radios/models/RadiosModel.dart' as _i26;
import '../features/radios/presentations/screens/RadioListing.dart' as _i20;
import '../features/radios/presentations/screens/RadioStationDetails.dart'
    as _i21;
import '../features/single_news_handler/presentation/screens/CreateCommentScreen.dart'
    as _i16;
import '../features/single_news_handler/presentation/screens/MainCommentsListing.dart'
    as _i14;
import '../features/single_news_handler/presentation/screens/ReplyCommentListing.dart'
    as _i15;
import '../features/webview/NewsWebView.dart' as _i8;
import '../features/your_interest/presentation/screens/YourInterestHome.dart'
    as _i6;
import 'route_guards.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter(
      {_i2.GlobalKey<_i2.NavigatorState>? navigatorKey,
      required this.authenticatedGuard})
      : super(navigatorKey);

  final _i3.AuthenticatedGuard authenticatedGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    App.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.App();
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.HomePage();
        }),
    YourInterestHome.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<YourInterestHomeArgs>(
              orElse: () => const YourInterestHomeArgs());
          return _i6.YourInterestHome(key: args.key);
        }),
    AllNewsScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.AllNewsScreen();
        }),
    NewsWebView.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<NewsWebViewArgs>();
          return _i8.NewsWebView(
              key: args.key,
              title: args.title,
              url: args.url,
              newsId: args.newsId,
              newsEntity: args.newsEntity);
        }),
    PersonalizationScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.PersonalizationScreen();
        }),
    LoginScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<LoginScreenArgs>(
              orElse: () => const LoginScreenArgs());
          return _i10.LoginScreen(key: args.key);
        }),
    ProfileEdit.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i11.ProfileEdit();
        }),
    SignupScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i12.SignupScreen();
        }),
    ProfileScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i13.ProfileScreen();
        }),
    MainCommentsListing.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainCommentsListingArgs>();
          return _i14.MainCommentsListing(
              key: args.key, newsId: args.newsId, newsEntity: args.newsEntity);
        }),
    ReplyCommentListing.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ReplyCommentListingArgs>();
          return _i15.ReplyCommentListing(
              key: args.key, commentId: args.commentId);
        }),
    CreateNewComment.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CreateNewCommentArgs>(
              orElse: () => const CreateNewCommentArgs());
          return _i16.CreateNewComment(
              key: args.key,
              replyId: args.replyId,
              parentId: args.parentId,
              newsId: args.newsId);
        }),
    PublisherRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<PublisherRouteArgs>();
          return _i17.PublisherPage(
              key: args.key,
              publihserID: args.publihserID,
              publisherName: args.publisherName,
              publisherLink: args.publisherLink,
              publisherLogo: args.publisherLogo,
              followerNumber: args.followerNumber,
              storyNumber: args.storyNumber);
        }),
    LatestVideoListing.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<LatestVideoListingArgs>(
              orElse: () => const LatestVideoListingArgs());
          return _i18.LatestVideoListing(
              key: args.key, scrollController: args.scrollController);
        }),
    VideoPlayerView.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<VideoPlayerViewArgs>();
          return _i19.VideoPlayerView(
              key: args.key, selectedVideoData: args.selectedVideoData);
        }),
    RadioListing.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<RadioListingArgs>(
              orElse: () => const RadioListingArgs());
          return _i20.RadioListing(
              key: args.key, scrollController: args.scrollController);
        }),
    RadioStationDetails.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<RadioStationDetailsArgs>();
          return _i21.RadioStationDetails(key: args.key, station: args.station);
        }),
    AllUtilsWrapper.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i22.AllUtilsWrapper();
        }),
    Utilities.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i22.Utilities();
        }),
    UTILS_QR_SCANNER_SCREEN.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<UTILS_QR_SCANNER_SCREENArgs>(
              orElse: () => const UTILS_QR_SCANNER_SCREENArgs());
          return _i22.QRBarcodeScreen(key: args.key);
        }),
    UTILS_COMPASS_SCREEN.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i22.CompassPage();
        }),
    UTILS_DATE_CONVERTER_SCREEN.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i22.DateConverison();
        }),
    UTILS_DATA_CONVETER_SCREEN.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<UTILS_DATA_CONVETER_SCREENArgs>(
              orElse: () => UTILS_DATA_CONVETER_SCREENArgs(
                  categoryIndex: pathParams.getString('categoryIndex')));
          return _i22.UnitConverter(categoryIndex: args.categoryIndex);
        }),
    UTILS_AGE_CALCULATOR_SCREEN.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i22.AgeCalculator();
        }),
    UTILS_DISCOUNT_CALCULATOR_SCREEN.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (_) {
              return _i22.DiscountScreen();
            }),
    UTILS_BMI_CALULATER_SCREEN.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i22.InputPageBmi();
        }),
    ResultRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ResultRouteArgs>();
          return _i22.ResultPage(
              bmiResult: args.bmiResult,
              resultText: args.resultText,
              interpretation: args.interpretation,
              gender: args.gender,
              age: args.age,
              height: args.height,
              weight: args.weight,
              color: args.color);
        }),
    UTILS_LENGTH_CONVERTER_SCREEN.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final pathParams = data.pathParams;
              final args = data.argsAs<UTILS_LENGTH_CONVERTER_SCREENArgs>(
                  orElse: () => UTILS_LENGTH_CONVERTER_SCREENArgs(
                      categoryIndex: pathParams.getString('categoryIndex')));
              return _i22.UnitConverter(categoryIndex: args.categoryIndex);
            }),
    UTILS_AREA_CALCULATOR_SCREEN.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final pathParams = data.pathParams;
              final args = data.argsAs<UTILS_AREA_CALCULATOR_SCREENArgs>(
                  orElse: () => UTILS_AREA_CALCULATOR_SCREENArgs(
                      categoryIndex: pathParams.getString('categoryIndex')));
              return _i22.UnitConverter(categoryIndex: args.categoryIndex);
            }),
    UTILS_VOLUME_CALCULATOR_SCREEN.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final pathParams = data.pathParams;
              final args = data.argsAs<UTILS_VOLUME_CALCULATOR_SCREENArgs>(
                  orElse: () => UTILS_VOLUME_CALCULATOR_SCREENArgs(
                      categoryIndex: pathParams.getString('categoryIndex')));
              return _i22.UnitConverter(categoryIndex: args.categoryIndex);
            }),
    UTILS_SPEED_CALCULATOR_SCREEN.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final pathParams = data.pathParams;
              final args = data.argsAs<UTILS_SPEED_CALCULATOR_SCREENArgs>(
                  orElse: () => UTILS_SPEED_CALCULATOR_SCREENArgs(
                      categoryIndex: pathParams.getString('categoryIndex')));
              return _i22.UnitConverter(categoryIndex: args.categoryIndex);
            }),
    UTILS_TIME_CALCULATOR_SCREEN.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final pathParams = data.pathParams;
              final args = data.argsAs<UTILS_TIME_CALCULATOR_SCREENArgs>(
                  orElse: () => UTILS_TIME_CALCULATOR_SCREENArgs(
                      categoryIndex: pathParams.getString('categoryIndex')));
              return _i22.UnitConverter(categoryIndex: args.categoryIndex);
            }),
    UTILS_WEIGHT_CALCULATOR_SCREEN.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final pathParams = data.pathParams;
              final args = data.argsAs<UTILS_WEIGHT_CALCULATOR_SCREENArgs>(
                  orElse: () => UTILS_WEIGHT_CALCULATOR_SCREENArgs(
                      categoryIndex: pathParams.getString('categoryIndex')));
              return _i22.UnitConverter(categoryIndex: args.categoryIndex);
            }),
    UTILS_NUMEBER_STYSTEM_SCREEN.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (_) {
              return _i22.NumericalSystemScreen();
            }),
    UTILS_TEMP_CONVERTER_SCREEN.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i22.TemperatureScreen();
        }),
    UTILS_KALIMATI_VEGTABLE_SCREEN.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (_) {
              return _i22.KalimatiVegetables();
            }),
    UTILS_ENERGY_CONVERTER_SCREEN.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final pathParams = data.pathParams;
              final args = data.argsAs<UTILS_ENERGY_CONVERTER_SCREENArgs>(
                  orElse: () => UTILS_ENERGY_CONVERTER_SCREENArgs(
                      categoryIndex: pathParams.getString('categoryIndex')));
              return _i22.UnitConverter(categoryIndex: args.categoryIndex);
            }),
    UTILS_CURRENCY_CONVERTER_SCREEN.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final pathParams = data.pathParams;
              final args = data.argsAs<UTILS_CURRENCY_CONVERTER_SCREENArgs>(
                  orElse: () => UTILS_CURRENCY_CONVERTER_SCREENArgs(
                      categoryIndex: pathParams.getString('categoryIndex')));
              return _i22.UnitConverter(categoryIndex: args.categoryIndex);
            }),
    UTILS_METAL_FOREX.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<UTILS_METAL_FOREXArgs>(
              orElse: () => const UTILS_METAL_FOREXArgs());
          return _i22.MetalForex(key: args.key, context: args.context);
        }),
    UTILS_CURRECNY_FOREX.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i23.CurrencyForexScreen();
        }),
    NotesScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i22.NotesScreen();
        }),
    CreateUpdateNotes.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CreateUpdateNotesArgs>(
              orElse: () => const CreateUpdateNotesArgs());
          return _i22.CreateUpdateNotes(
              key: args.key, note: args.note, dateTime: args.dateTime);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect',
            path: '/', redirectTo: '', fullMatch: true),
        _i1.RouteConfig(App.name, path: '', children: [
          _i1.RouteConfig(HomeRoute.name, path: ''),
          _i1.RouteConfig(YourInterestHome.name, path: 'your-interest-home'),
          _i1.RouteConfig(AllNewsScreen.name, path: 'all-news-screen'),
          _i1.RouteConfig(NewsWebView.name, path: 'news-web-view'),
          _i1.RouteConfig(PersonalizationScreen.name,
              path: 'personalization-screen'),
          _i1.RouteConfig(LoginScreen.name, path: 'login-screen'),
          _i1.RouteConfig(ProfileEdit.name, path: 'profile-edit'),
          _i1.RouteConfig(SignupScreen.name, path: 'signup-screen'),
          _i1.RouteConfig(ProfileScreen.name,
              path: 'profile-screen', guards: [authenticatedGuard]),
          _i1.RouteConfig(MainCommentsListing.name,
              path: 'main-comments-listing'),
          _i1.RouteConfig(ReplyCommentListing.name,
              path: 'reply-comment-listing'),
          _i1.RouteConfig(CreateNewComment.name,
              path: 'create-new-comment', guards: [authenticatedGuard]),
          _i1.RouteConfig(PublisherRoute.name, path: 'publisher-page'),
          _i1.RouteConfig(LatestVideoListing.name,
              path: 'latest-video-listing'),
          _i1.RouteConfig(VideoPlayerView.name, path: 'video-player-view'),
          _i1.RouteConfig(RadioListing.name, path: 'radio-listing'),
          _i1.RouteConfig(RadioStationDetails.name,
              path: 'radio-station-details'),
          _i1.RouteConfig(AllUtilsWrapper.name,
              path: 'all-utils-wrapper',
              children: [
                _i1.RouteConfig(Utilities.name, path: ''),
                _i1.RouteConfig(UTILS_QR_SCANNER_SCREEN.name,
                    path: 'UTILS_QR_SCANNER_SCREEN'),
                _i1.RouteConfig(UTILS_COMPASS_SCREEN.name,
                    path: 'UTILS_COMPASS_SCREEN'),
                _i1.RouteConfig(UTILS_DATE_CONVERTER_SCREEN.name,
                    path: 'UTILS_DATE_CONVERTER_SCREEN'),
                _i1.RouteConfig(UTILS_DATA_CONVETER_SCREEN.name,
                    path: 'UTILS_DATA_CONVETER_SCREEN/:categoryIndex'),
                _i1.RouteConfig(UTILS_AGE_CALCULATOR_SCREEN.name,
                    path: 'UTILS_AGE_CALCULATOR_SCREEN'),
                _i1.RouteConfig(UTILS_DISCOUNT_CALCULATOR_SCREEN.name,
                    path: 'UTILS_DISCOUNT_CALCULATOR_SCREEN'),
                _i1.RouteConfig(UTILS_BMI_CALULATER_SCREEN.name,
                    path: 'UTILS_BMI_CALULATER_SCREEN'),
                _i1.RouteConfig(ResultRoute.name, path: 'result-page'),
                _i1.RouteConfig(UTILS_LENGTH_CONVERTER_SCREEN.name,
                    path: 'UTILS_LENGTH_CONVERTER_SCREEN/:categoryIndex'),
                _i1.RouteConfig(UTILS_AREA_CALCULATOR_SCREEN.name,
                    path: 'UTILS_AREA_CALCULATOR_SCREEN/:categoryIndex'),
                _i1.RouteConfig(UTILS_VOLUME_CALCULATOR_SCREEN.name,
                    path: 'UTILS_VOLUME_CALCULATOR_SCREEN/:categoryIndex'),
                _i1.RouteConfig(UTILS_SPEED_CALCULATOR_SCREEN.name,
                    path: 'UTILS_SPEED_CALCULATOR_SCREEN/:categoryIndex'),
                _i1.RouteConfig(UTILS_TIME_CALCULATOR_SCREEN.name,
                    path: 'UTILS_TIME_CALCULATOR_SCREEN/:categoryIndex'),
                _i1.RouteConfig(UTILS_WEIGHT_CALCULATOR_SCREEN.name,
                    path: 'UTILS_WEIGHT_CALCULATOR_SCREEN/:categoryIndex'),
                _i1.RouteConfig(UTILS_NUMEBER_STYSTEM_SCREEN.name,
                    path: 'UTILS_NUMEBER_STYSTEM_SCREEN'),
                _i1.RouteConfig(UTILS_TEMP_CONVERTER_SCREEN.name,
                    path: 'UTILS_TEMP_CONVERTER_SCREEN'),
                _i1.RouteConfig(UTILS_KALIMATI_VEGTABLE_SCREEN.name,
                    path: 'UTILS_KALIMATI_VEGTABLE_SCREEN'),
                _i1.RouteConfig(UTILS_ENERGY_CONVERTER_SCREEN.name,
                    path: 'UTILS_ENERGY_CONVERTER_SCREEN/:categoryIndex'),
                _i1.RouteConfig(UTILS_CURRENCY_CONVERTER_SCREEN.name,
                    path: 'UTILS_CURRENCY_CONVERTER_SCREEN/:categoryIndex'),
                _i1.RouteConfig(UTILS_METAL_FOREX.name,
                    path: 'UTILS_METAL_FOREX'),
                _i1.RouteConfig(UTILS_CURRECNY_FOREX.name,
                    path: 'UTILS_CURRENCY_FOREX'),
                _i1.RouteConfig(NotesScreen.name, path: 'notes-screen'),
                _i1.RouteConfig(CreateUpdateNotes.name,
                    path: 'create-update-notes')
              ])
        ])
      ];
}

class App extends _i1.PageRouteInfo {
  const App({List<_i1.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'App';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

class YourInterestHome extends _i1.PageRouteInfo<YourInterestHomeArgs> {
  YourInterestHome({_i2.Key? key})
      : super(name,
            path: 'your-interest-home', args: YourInterestHomeArgs(key: key));

  static const String name = 'YourInterestHome';
}

class YourInterestHomeArgs {
  const YourInterestHomeArgs({this.key});

  final _i2.Key? key;
}

class AllNewsScreen extends _i1.PageRouteInfo {
  const AllNewsScreen() : super(name, path: 'all-news-screen');

  static const String name = 'AllNewsScreen';
}

class NewsWebView extends _i1.PageRouteInfo<NewsWebViewArgs> {
  NewsWebView(
      {_i2.Key? key,
      required String title,
      String? url,
      required int newsId,
      _i24.Datum? newsEntity})
      : super(name,
            path: 'news-web-view',
            args: NewsWebViewArgs(
                key: key,
                title: title,
                url: url,
                newsId: newsId,
                newsEntity: newsEntity));

  static const String name = 'NewsWebView';
}

class NewsWebViewArgs {
  const NewsWebViewArgs(
      {this.key,
      required this.title,
      this.url,
      required this.newsId,
      this.newsEntity});

  final _i2.Key? key;

  final String title;

  final String? url;

  final int newsId;

  final _i24.Datum? newsEntity;
}

class PersonalizationScreen extends _i1.PageRouteInfo {
  const PersonalizationScreen() : super(name, path: 'personalization-screen');

  static const String name = 'PersonalizationScreen';
}

class LoginScreen extends _i1.PageRouteInfo<LoginScreenArgs> {
  LoginScreen({_i2.Key? key})
      : super(name, path: 'login-screen', args: LoginScreenArgs(key: key));

  static const String name = 'LoginScreen';
}

class LoginScreenArgs {
  const LoginScreenArgs({this.key});

  final _i2.Key? key;
}

class ProfileEdit extends _i1.PageRouteInfo {
  const ProfileEdit() : super(name, path: 'profile-edit');

  static const String name = 'ProfileEdit';
}

class SignupScreen extends _i1.PageRouteInfo {
  const SignupScreen() : super(name, path: 'signup-screen');

  static const String name = 'SignupScreen';
}

class ProfileScreen extends _i1.PageRouteInfo {
  const ProfileScreen() : super(name, path: 'profile-screen');

  static const String name = 'ProfileScreen';
}

class MainCommentsListing extends _i1.PageRouteInfo<MainCommentsListingArgs> {
  MainCommentsListing(
      {_i2.Key? key, required int newsId, _i24.Datum? newsEntity})
      : super(name,
            path: 'main-comments-listing',
            args: MainCommentsListingArgs(
                key: key, newsId: newsId, newsEntity: newsEntity));

  static const String name = 'MainCommentsListing';
}

class MainCommentsListingArgs {
  const MainCommentsListingArgs(
      {this.key, required this.newsId, this.newsEntity});

  final _i2.Key? key;

  final int newsId;

  final _i24.Datum? newsEntity;
}

class ReplyCommentListing extends _i1.PageRouteInfo<ReplyCommentListingArgs> {
  ReplyCommentListing({_i2.Key? key, required int commentId})
      : super(name,
            path: 'reply-comment-listing',
            args: ReplyCommentListingArgs(key: key, commentId: commentId));

  static const String name = 'ReplyCommentListing';
}

class ReplyCommentListingArgs {
  const ReplyCommentListingArgs({this.key, required this.commentId});

  final _i2.Key? key;

  final int commentId;
}

class CreateNewComment extends _i1.PageRouteInfo<CreateNewCommentArgs> {
  CreateNewComment({_i2.Key? key, int? replyId, int? parentId, int? newsId})
      : super(name,
            path: 'create-new-comment',
            args: CreateNewCommentArgs(
                key: key,
                replyId: replyId,
                parentId: parentId,
                newsId: newsId));

  static const String name = 'CreateNewComment';
}

class CreateNewCommentArgs {
  const CreateNewCommentArgs(
      {this.key, this.replyId, this.parentId, this.newsId});

  final _i2.Key? key;

  final int? replyId;

  final int? parentId;

  final int? newsId;
}

class PublisherRoute extends _i1.PageRouteInfo<PublisherRouteArgs> {
  PublisherRoute(
      {_i2.Key? key,
      required int publihserID,
      String? publisherName,
      String? publisherLink,
      String? publisherLogo,
      int? followerNumber,
      int? storyNumber})
      : super(name,
            path: 'publisher-page',
            args: PublisherRouteArgs(
                key: key,
                publihserID: publihserID,
                publisherName: publisherName,
                publisherLink: publisherLink,
                publisherLogo: publisherLogo,
                followerNumber: followerNumber,
                storyNumber: storyNumber));

  static const String name = 'PublisherRoute';
}

class PublisherRouteArgs {
  const PublisherRouteArgs(
      {this.key,
      required this.publihserID,
      this.publisherName,
      this.publisherLink,
      this.publisherLogo,
      this.followerNumber,
      this.storyNumber});

  final _i2.Key? key;

  final int publihserID;

  final String? publisherName;

  final String? publisherLink;

  final String? publisherLogo;

  final int? followerNumber;

  final int? storyNumber;
}

class LatestVideoListing extends _i1.PageRouteInfo<LatestVideoListingArgs> {
  LatestVideoListing({_i2.Key? key, _i2.ScrollController? scrollController})
      : super(name,
            path: 'latest-video-listing',
            args: LatestVideoListingArgs(
                key: key, scrollController: scrollController));

  static const String name = 'LatestVideoListing';
}

class LatestVideoListingArgs {
  const LatestVideoListingArgs({this.key, this.scrollController});

  final _i2.Key? key;

  final _i2.ScrollController? scrollController;
}

class VideoPlayerView extends _i1.PageRouteInfo<VideoPlayerViewArgs> {
  VideoPlayerView({_i2.Key? key, required _i25.Datum selectedVideoData})
      : super(name,
            path: 'video-player-view',
            args: VideoPlayerViewArgs(
                key: key, selectedVideoData: selectedVideoData));

  static const String name = 'VideoPlayerView';
}

class VideoPlayerViewArgs {
  const VideoPlayerViewArgs({this.key, required this.selectedVideoData});

  final _i2.Key? key;

  final _i25.Datum selectedVideoData;
}

class RadioListing extends _i1.PageRouteInfo<RadioListingArgs> {
  RadioListing({_i2.Key? key, _i2.ScrollController? scrollController})
      : super(name,
            path: 'radio-listing',
            args:
                RadioListingArgs(key: key, scrollController: scrollController));

  static const String name = 'RadioListing';
}

class RadioListingArgs {
  const RadioListingArgs({this.key, this.scrollController});

  final _i2.Key? key;

  final _i2.ScrollController? scrollController;
}

class RadioStationDetails extends _i1.PageRouteInfo<RadioStationDetailsArgs> {
  RadioStationDetails({_i2.Key? key, required _i26.Datum station})
      : super(name,
            path: 'radio-station-details',
            args: RadioStationDetailsArgs(key: key, station: station));

  static const String name = 'RadioStationDetails';
}

class RadioStationDetailsArgs {
  const RadioStationDetailsArgs({this.key, required this.station});

  final _i2.Key? key;

  final _i26.Datum station;
}

class AllUtilsWrapper extends _i1.PageRouteInfo {
  const AllUtilsWrapper({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'all-utils-wrapper', initialChildren: children);

  static const String name = 'AllUtilsWrapper';
}

class Utilities extends _i1.PageRouteInfo {
  const Utilities() : super(name, path: '');

  static const String name = 'Utilities';
}

class UTILS_QR_SCANNER_SCREEN
    extends _i1.PageRouteInfo<UTILS_QR_SCANNER_SCREENArgs> {
  UTILS_QR_SCANNER_SCREEN({_i2.Key? key})
      : super(name,
            path: 'UTILS_QR_SCANNER_SCREEN',
            args: UTILS_QR_SCANNER_SCREENArgs(key: key));

  static const String name = 'UTILS_QR_SCANNER_SCREEN';
}

class UTILS_QR_SCANNER_SCREENArgs {
  const UTILS_QR_SCANNER_SCREENArgs({this.key});

  final _i2.Key? key;
}

class UTILS_COMPASS_SCREEN extends _i1.PageRouteInfo {
  const UTILS_COMPASS_SCREEN() : super(name, path: 'UTILS_COMPASS_SCREEN');

  static const String name = 'UTILS_COMPASS_SCREEN';
}

class UTILS_DATE_CONVERTER_SCREEN extends _i1.PageRouteInfo {
  const UTILS_DATE_CONVERTER_SCREEN()
      : super(name, path: 'UTILS_DATE_CONVERTER_SCREEN');

  static const String name = 'UTILS_DATE_CONVERTER_SCREEN';
}

class UTILS_DATA_CONVETER_SCREEN
    extends _i1.PageRouteInfo<UTILS_DATA_CONVETER_SCREENArgs> {
  UTILS_DATA_CONVETER_SCREEN({required String categoryIndex})
      : super(name,
            path: 'UTILS_DATA_CONVETER_SCREEN/:categoryIndex',
            args: UTILS_DATA_CONVETER_SCREENArgs(categoryIndex: categoryIndex),
            rawPathParams: {'categoryIndex': categoryIndex});

  static const String name = 'UTILS_DATA_CONVETER_SCREEN';
}

class UTILS_DATA_CONVETER_SCREENArgs {
  const UTILS_DATA_CONVETER_SCREENArgs({required this.categoryIndex});

  final String categoryIndex;
}

class UTILS_AGE_CALCULATOR_SCREEN extends _i1.PageRouteInfo {
  const UTILS_AGE_CALCULATOR_SCREEN()
      : super(name, path: 'UTILS_AGE_CALCULATOR_SCREEN');

  static const String name = 'UTILS_AGE_CALCULATOR_SCREEN';
}

class UTILS_DISCOUNT_CALCULATOR_SCREEN extends _i1.PageRouteInfo {
  const UTILS_DISCOUNT_CALCULATOR_SCREEN()
      : super(name, path: 'UTILS_DISCOUNT_CALCULATOR_SCREEN');

  static const String name = 'UTILS_DISCOUNT_CALCULATOR_SCREEN';
}

class UTILS_BMI_CALULATER_SCREEN extends _i1.PageRouteInfo {
  const UTILS_BMI_CALULATER_SCREEN()
      : super(name, path: 'UTILS_BMI_CALULATER_SCREEN');

  static const String name = 'UTILS_BMI_CALULATER_SCREEN';
}

class ResultRoute extends _i1.PageRouteInfo<ResultRouteArgs> {
  ResultRoute(
      {required String bmiResult,
      required String resultText,
      required String interpretation,
      required _i27.Gender gender,
      required String age,
      required String height,
      required String weight,
      _i2.Color? color})
      : super(name,
            path: 'result-page',
            args: ResultRouteArgs(
                bmiResult: bmiResult,
                resultText: resultText,
                interpretation: interpretation,
                gender: gender,
                age: age,
                height: height,
                weight: weight,
                color: color));

  static const String name = 'ResultRoute';
}

class ResultRouteArgs {
  const ResultRouteArgs(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation,
      required this.gender,
      required this.age,
      required this.height,
      required this.weight,
      this.color});

  final String bmiResult;

  final String resultText;

  final String interpretation;

  final _i27.Gender gender;

  final String age;

  final String height;

  final String weight;

  final _i2.Color? color;
}

class UTILS_LENGTH_CONVERTER_SCREEN
    extends _i1.PageRouteInfo<UTILS_LENGTH_CONVERTER_SCREENArgs> {
  UTILS_LENGTH_CONVERTER_SCREEN({required String categoryIndex})
      : super(name,
            path: 'UTILS_LENGTH_CONVERTER_SCREEN/:categoryIndex',
            args:
                UTILS_LENGTH_CONVERTER_SCREENArgs(categoryIndex: categoryIndex),
            rawPathParams: {'categoryIndex': categoryIndex});

  static const String name = 'UTILS_LENGTH_CONVERTER_SCREEN';
}

class UTILS_LENGTH_CONVERTER_SCREENArgs {
  const UTILS_LENGTH_CONVERTER_SCREENArgs({required this.categoryIndex});

  final String categoryIndex;
}

class UTILS_AREA_CALCULATOR_SCREEN
    extends _i1.PageRouteInfo<UTILS_AREA_CALCULATOR_SCREENArgs> {
  UTILS_AREA_CALCULATOR_SCREEN({required String categoryIndex})
      : super(name,
            path: 'UTILS_AREA_CALCULATOR_SCREEN/:categoryIndex',
            args:
                UTILS_AREA_CALCULATOR_SCREENArgs(categoryIndex: categoryIndex),
            rawPathParams: {'categoryIndex': categoryIndex});

  static const String name = 'UTILS_AREA_CALCULATOR_SCREEN';
}

class UTILS_AREA_CALCULATOR_SCREENArgs {
  const UTILS_AREA_CALCULATOR_SCREENArgs({required this.categoryIndex});

  final String categoryIndex;
}

class UTILS_VOLUME_CALCULATOR_SCREEN
    extends _i1.PageRouteInfo<UTILS_VOLUME_CALCULATOR_SCREENArgs> {
  UTILS_VOLUME_CALCULATOR_SCREEN({required String categoryIndex})
      : super(name,
            path: 'UTILS_VOLUME_CALCULATOR_SCREEN/:categoryIndex',
            args: UTILS_VOLUME_CALCULATOR_SCREENArgs(
                categoryIndex: categoryIndex),
            rawPathParams: {'categoryIndex': categoryIndex});

  static const String name = 'UTILS_VOLUME_CALCULATOR_SCREEN';
}

class UTILS_VOLUME_CALCULATOR_SCREENArgs {
  const UTILS_VOLUME_CALCULATOR_SCREENArgs({required this.categoryIndex});

  final String categoryIndex;
}

class UTILS_SPEED_CALCULATOR_SCREEN
    extends _i1.PageRouteInfo<UTILS_SPEED_CALCULATOR_SCREENArgs> {
  UTILS_SPEED_CALCULATOR_SCREEN({required String categoryIndex})
      : super(name,
            path: 'UTILS_SPEED_CALCULATOR_SCREEN/:categoryIndex',
            args:
                UTILS_SPEED_CALCULATOR_SCREENArgs(categoryIndex: categoryIndex),
            rawPathParams: {'categoryIndex': categoryIndex});

  static const String name = 'UTILS_SPEED_CALCULATOR_SCREEN';
}

class UTILS_SPEED_CALCULATOR_SCREENArgs {
  const UTILS_SPEED_CALCULATOR_SCREENArgs({required this.categoryIndex});

  final String categoryIndex;
}

class UTILS_TIME_CALCULATOR_SCREEN
    extends _i1.PageRouteInfo<UTILS_TIME_CALCULATOR_SCREENArgs> {
  UTILS_TIME_CALCULATOR_SCREEN({required String categoryIndex})
      : super(name,
            path: 'UTILS_TIME_CALCULATOR_SCREEN/:categoryIndex',
            args:
                UTILS_TIME_CALCULATOR_SCREENArgs(categoryIndex: categoryIndex),
            rawPathParams: {'categoryIndex': categoryIndex});

  static const String name = 'UTILS_TIME_CALCULATOR_SCREEN';
}

class UTILS_TIME_CALCULATOR_SCREENArgs {
  const UTILS_TIME_CALCULATOR_SCREENArgs({required this.categoryIndex});

  final String categoryIndex;
}

class UTILS_WEIGHT_CALCULATOR_SCREEN
    extends _i1.PageRouteInfo<UTILS_WEIGHT_CALCULATOR_SCREENArgs> {
  UTILS_WEIGHT_CALCULATOR_SCREEN({required String categoryIndex})
      : super(name,
            path: 'UTILS_WEIGHT_CALCULATOR_SCREEN/:categoryIndex',
            args: UTILS_WEIGHT_CALCULATOR_SCREENArgs(
                categoryIndex: categoryIndex),
            rawPathParams: {'categoryIndex': categoryIndex});

  static const String name = 'UTILS_WEIGHT_CALCULATOR_SCREEN';
}

class UTILS_WEIGHT_CALCULATOR_SCREENArgs {
  const UTILS_WEIGHT_CALCULATOR_SCREENArgs({required this.categoryIndex});

  final String categoryIndex;
}

class UTILS_NUMEBER_STYSTEM_SCREEN extends _i1.PageRouteInfo {
  const UTILS_NUMEBER_STYSTEM_SCREEN()
      : super(name, path: 'UTILS_NUMEBER_STYSTEM_SCREEN');

  static const String name = 'UTILS_NUMEBER_STYSTEM_SCREEN';
}

class UTILS_TEMP_CONVERTER_SCREEN extends _i1.PageRouteInfo {
  const UTILS_TEMP_CONVERTER_SCREEN()
      : super(name, path: 'UTILS_TEMP_CONVERTER_SCREEN');

  static const String name = 'UTILS_TEMP_CONVERTER_SCREEN';
}

class UTILS_KALIMATI_VEGTABLE_SCREEN extends _i1.PageRouteInfo {
  const UTILS_KALIMATI_VEGTABLE_SCREEN()
      : super(name, path: 'UTILS_KALIMATI_VEGTABLE_SCREEN');

  static const String name = 'UTILS_KALIMATI_VEGTABLE_SCREEN';
}

class UTILS_ENERGY_CONVERTER_SCREEN
    extends _i1.PageRouteInfo<UTILS_ENERGY_CONVERTER_SCREENArgs> {
  UTILS_ENERGY_CONVERTER_SCREEN({required String categoryIndex})
      : super(name,
            path: 'UTILS_ENERGY_CONVERTER_SCREEN/:categoryIndex',
            args:
                UTILS_ENERGY_CONVERTER_SCREENArgs(categoryIndex: categoryIndex),
            rawPathParams: {'categoryIndex': categoryIndex});

  static const String name = 'UTILS_ENERGY_CONVERTER_SCREEN';
}

class UTILS_ENERGY_CONVERTER_SCREENArgs {
  const UTILS_ENERGY_CONVERTER_SCREENArgs({required this.categoryIndex});

  final String categoryIndex;
}

class UTILS_CURRENCY_CONVERTER_SCREEN
    extends _i1.PageRouteInfo<UTILS_CURRENCY_CONVERTER_SCREENArgs> {
  UTILS_CURRENCY_CONVERTER_SCREEN({required String categoryIndex})
      : super(name,
            path: 'UTILS_CURRENCY_CONVERTER_SCREEN/:categoryIndex',
            args: UTILS_CURRENCY_CONVERTER_SCREENArgs(
                categoryIndex: categoryIndex),
            rawPathParams: {'categoryIndex': categoryIndex});

  static const String name = 'UTILS_CURRENCY_CONVERTER_SCREEN';
}

class UTILS_CURRENCY_CONVERTER_SCREENArgs {
  const UTILS_CURRENCY_CONVERTER_SCREENArgs({required this.categoryIndex});

  final String categoryIndex;
}

class UTILS_METAL_FOREX extends _i1.PageRouteInfo<UTILS_METAL_FOREXArgs> {
  UTILS_METAL_FOREX({_i2.Key? key, _i2.BuildContext? context})
      : super(name,
            path: 'UTILS_METAL_FOREX',
            args: UTILS_METAL_FOREXArgs(key: key, context: context));

  static const String name = 'UTILS_METAL_FOREX';
}

class UTILS_METAL_FOREXArgs {
  const UTILS_METAL_FOREXArgs({this.key, this.context});

  final _i2.Key? key;

  final _i2.BuildContext? context;
}

class UTILS_CURRECNY_FOREX extends _i1.PageRouteInfo {
  const UTILS_CURRECNY_FOREX() : super(name, path: 'UTILS_CURRENCY_FOREX');

  static const String name = 'UTILS_CURRECNY_FOREX';
}

class NotesScreen extends _i1.PageRouteInfo {
  const NotesScreen() : super(name, path: 'notes-screen');

  static const String name = 'NotesScreen';
}

class CreateUpdateNotes extends _i1.PageRouteInfo<CreateUpdateNotesArgs> {
  CreateUpdateNotes({_i2.Key? key, _i28.Note? note, DateTime? dateTime})
      : super(name,
            path: 'create-update-notes',
            args: CreateUpdateNotesArgs(
                key: key, note: note, dateTime: dateTime));

  static const String name = 'CreateUpdateNotes';
}

class CreateUpdateNotesArgs {
  const CreateUpdateNotesArgs({this.key, this.note, this.dateTime});

  final _i2.Key? key;

  final _i28.Note? note;

  final DateTime? dateTime;
}
