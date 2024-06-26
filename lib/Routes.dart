import 'package:checkupapp/Core/Constant/routes.dart';
import 'package:checkupapp/Core/Middleware/myMiddleware.dart';
import 'package:checkupapp/View/Screen/Auth/Login.dart';
import 'package:checkupapp/View/Screen/Home.dart';
import 'package:checkupapp/View/Screen/Language.dart';
import 'package:checkupapp/View/Screen/Profile.dart';
import 'package:get/get.dart';
import 'View/Screen/Auth/ForgetPassword/resetpassword.dart';
import 'View/Screen/Auth/ForgetPassword/success_resetpassword.dart';
import 'View/Screen/Auth/ForgetPassword/verifycode.dart';
import 'View/Screen/Auth/SignUp.dart';
import 'View/Screen/Auth/ForgetPassword/forgetpassword.dart';
import 'View/Screen/Auth/VerifycodeSignUp.dart';
import 'View/Screen/Auth/success_signup.dart';
import 'View/Screen/Question/QuestionView.dart';
import 'View/Screen/onBoarding.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Login() , middlewares: [
    MyMiddleWare()
  ]),
  GetPage(name: AppRoutes.login, page: () => const Login()),
  GetPage(name: AppRoutes.signUp, page: () => const SignUp()),
  GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoutes.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoutes.successResetpassword, page: () => const SuccessResetPassword()),
  GetPage(name: AppRoutes.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoutes.onboarding, page: () =>  onBoarding()),
  GetPage(name: AppRoutes.verifyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  GetPage(name: AppRoutes.homepage, page: () => const Home()),
  GetPage(name: AppRoutes.Profile, page: () =>  ProfileScreen()),
  GetPage(name: AppRoutes.QuestionView, page: () =>  QuestionView()),
];

// Map<String, Widget Function(BuildContext)> routes = {
//   AppRoutes.login: (context) =>const Login(),
//   AppRoutes.signUp: (context) => const SignUp() ,
//   AppRoutes.forgetPassword: (context) => const ForgetPassword(),
//   AppRoutes.verfiyCode: (context) => const VerfiyCode(),
//   AppRoutes.resetPassword: (context) => const ResetPassword(),
//   AppRoutes.successResetpassword: (context) => const SuccessResetPassword(),
//   AppRoutes.successSignUp: (context) => const SuccessSignUp(),
//   AppRoutes.verifyCodeSignUp: (context) => const VerfiyCodeSignUp(),
//
//   AppRoutes.onboarding: (context) => const onBoarding(),
//
// };
