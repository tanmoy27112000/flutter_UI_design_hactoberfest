import 'package:twitter_clone/meta/widgets/views/landing_view/landing.view.dart';
import 'package:twitter_clone/meta/widgets/views/login_view/login.view.dart';
import 'package:twitter_clone/meta/widgets/views/signup_view/signup.view.dart';
import 'package:twitter_clone/meta/widgets/views/splash.view.dart';

const String SplashRoute = "/splash";
const String LandingRoute = "/landing";
const String LoginRoute = "/login";
const String SignupRoute = "/signup";

final routes = {
  SplashRoute: (context) => SplashView(),
  LandingRoute: (context) => LandingView(),
  LoginRoute: (context) => LoginView(),
  SignupRoute: (context) => SignupView(),
};
