import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tapparty/common/middlewares/middlewares.dart';
import 'package:tapparty/common/routes/observers.dart';
import 'package:tapparty/pages/home/index.dart';
import 'package:tapparty/pages/login/index.dart';
import 'package:tapparty/pages/signup/index.dart';
import 'package:tapparty/pages/welcome/index.dart';
import 'route.names.dart';


class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    // 免登陆
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => WelcomePage(),
      binding: WelcomeBinding(),
      middlewares: [
        RouteWelcomeMiddleware(priority: 1),
      ],
    ),
    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => LoginPage(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: AppRoutes.SIGN_UP,
      page: () => SignUpPage(),
      binding: SignUpBinding(),
    ),

    // 需要登录
    GetPage(
      name: AppRoutes.HomePage,
      page: () => HomePage(),
      binding: HomePageBinding(),
      middlewares: [
        RouteAuthMiddleware(priority: 1),
      ],
    ),

    // 分类列表
    /*GetPage(
      name: AppRoutes.Category,
      page: () => CategoryPage(),
      binding: CategoryBinding(),
    ),*/
  ];

  // static final unknownRoute = GetPage(
  //   name: AppRoutes.NotFound,
  //   page: () => NotfoundView(),
  // );

}
