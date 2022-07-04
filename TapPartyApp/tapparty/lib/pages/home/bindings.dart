import 'package:get/get.dart';
import 'package:tapparty/pages/home/index.dart';
import 'controller.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() => HomePageController());
    //呢度係用黎放唔同controller
  }
}
