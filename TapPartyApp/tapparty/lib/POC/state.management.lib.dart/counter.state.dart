import 'package:get/get.dart';

//put the state controller to GetxController to use this functions
class CounterState extends GetxController{
  var count = 0.obs; //observation
  void increment() {
    count++;
  }
  }
