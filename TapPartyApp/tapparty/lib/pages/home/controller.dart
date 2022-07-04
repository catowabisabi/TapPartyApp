import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  HomePageController();

  /// 响应式成员变量

  final state = HomePageController();

  /// 成员变量

  // tab 页标题
  late final List<String> tabTitles;

  // 页控制器
  late final PageController pageController;

  // 底部导航项目
  late final List<BottomNavigationBarItem> bottomTabs;

/// 事件


/// scheme 内部打开


// 程序打开时介入


  /// 生命周期

  @override
  void onInit() {
    super.onInit();

    // handleInitialUri();
    // handleIncomingLinks();

    // 准备一些静态数据


    @override
    void onReady() {
      super.onReady();
    }

    @override
    void onClose() {
      super.onClose();
    }

    @override
    void dispose() {
      pageController.dispose();
      super.dispose();
    }
  }
}