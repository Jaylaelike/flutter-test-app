import 'package:ecommerce/controller/app_controller.dart';
import 'package:get/instance_manager.dart';
import 'package:http/http.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}
