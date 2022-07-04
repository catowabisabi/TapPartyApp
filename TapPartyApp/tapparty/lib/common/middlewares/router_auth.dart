import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tapparty/common/routes/route.names.dart';
import 'package:tapparty/common/store/store.dart';

/// 檢查是否登錄
class RouteAuthMiddleware extends GetMiddleware {
  // priority 数字小优先级高
  @override
  int? priority = 0;

  RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    if (UserStore.to.isLogin ||
        route == AppRoutes.SIGN_IN ||
        route == AppRoutes.SIGN_UP ||
        route == AppRoutes.INITIAL) {
      return null;
    } else {
      Future.delayed(
          Duration(seconds: 1), () => Get.snackbar("提示", "登錄過期,請重新登錄"));
      return RouteSettings(name: AppRoutes.SIGN_IN);
    }
  }
}
