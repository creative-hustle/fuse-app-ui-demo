import 'package:flutter/material.dart';
import 'package:ofc_port/base/base_controller.dart';

class ChatBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatController(), fenix: true);
  }
}

class ChatController extends BaseController {
  TextEditingController sendMsgController = TextEditingController();
  dynamic argumentData = Get.arguments;
  List textMsgList = [
    {
      "msg": "Not so good...",
      "author": "0",
    },
    {
      "msg": "What about you?",
      "author": "1",
    },
    {
      "msg": "Perfect!",
      "author": "1",
    },
    {
      "msg": "How your life is going?",
      "author": "0",
    },
    {
      "msg": "Hello!",
      "author": "0",
    },




  ];
  String? userName;
  String? userImage;

  @override
  void onInit() {
    super.onInit();
    if (argumentData != null) {
      userImage = argumentData[0].toString();
      userName = argumentData[1];
    }
  }
}
