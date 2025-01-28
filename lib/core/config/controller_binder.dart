import 'package:assignment/core/wigets/main_bottom_controller.dart';
import 'package:get/get.dart';


class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(NavigationController());



  }
}
