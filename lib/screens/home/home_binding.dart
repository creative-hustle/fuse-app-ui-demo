import 'package:ofc_port/base/base_controller.dart';
import 'package:ofc_port/router/router_name.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(), fenix: true);
  }
}
class HomeController extends BaseController{
  List storyList = [
    'assets/image/item1.png',
    'assets/image/item2.png',
    'assets/image/item3.png',
  ];
  List sliderHome =[
    'assets/image/slider.png',
    'assets/image/slider2.png'
  ];
  profile() {
    Get.toNamed(RouterName.profile);
  }
  message(){
    Get.toNamed(RouterName.message);
  }
}