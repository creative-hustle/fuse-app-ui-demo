import 'package:carousel_slider/carousel_slider.dart';
import 'package:ofc_port/base/base_controller.dart';
import 'package:ofc_port/router/router_name.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(), fenix: true);
  }
}

class SplashController extends BaseController {
  CarouselController buttonCarouselController = CarouselController();
  int sliderCurrent = 0;
  List itemsText = [
    "The best photos from good people",
    "The best photos from good people",
    "The best photos from good people",
    "The best photos from good people",
  ];

  getStart() {
    Get.offNamed(RouterName.home);
  }
}
