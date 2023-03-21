import 'package:flutter/material.dart';
import 'package:ofc_port/base/base_controller.dart';

class MessageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageController(), fenix: true);
  }
}

class MessageController extends BaseController {
  TextEditingController searchController = TextEditingController();
  List messageList = [
    {
      "image": "assets/image/message1.png",
      "name": "Jessica Parker",
      "des": "How your life is going?",
    },
    {
      "image": "assets/image/message2.png",
      "name": "Julia Green",
      "des": "Wow, that's awesome!",
    },
    {
      "image": "assets/image/message3.png",
      "name": "Miranda Bell",
      "des": "Bye-bye.",
    },
    {
      "image": "assets/image/message4.png",
      "name": "Hanna Goldberg",
      "des": "it's a sunny day.",
    },
    {
      "image": "assets/image/message5.png",
      "name": "Mike Goldberg",
      "des": "it's a sunny day.",
    },
  ];
}
