import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ofc_port/base/base_view_view_model.dart';
import 'package:ofc_port/res/app_colors.dart';
import 'package:ofc_port/res/style.dart';
import 'package:ofc_port/screens/chat/chat_binding.dart';
import 'package:ofc_port/screens/widget/custome_textfield.dart';

class ChatScreen extends BaseView<ChatController> {
  const ChatScreen({super.key});

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.whiteColor,
                AppColors.gradiantColor,
                AppColors.gradiantColor,
                AppColors.gradiantColor,
              ],
            ),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 276.h,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/image/splash.svg',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 30.h,
                          left: 40.w,
                          child: GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Image.asset(
                              "assets/image/back.png",
                              height: 20.w,
                              width: 20.w,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 130.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Online",
                                      style: merriweatherRegular.copyWith(
                                        fontSize: 18.sp,
                                        color: AppColors.liteColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      controller.userName ?? "",
                                      style: merriweatherRegular.copyWith(
                                        fontSize: 26.sp,
                                        color: AppColors.mainDarkColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 74.w,
                                  height: 74.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.pinkLightColor,
                                        blurRadius: 30.r,
                                        offset: const Offset(0, 20),
                                      ),
                                    ],
                                  ),
                                  child: Image.asset(
                                    controller.userImage ?? 'assets/image/message1.png',
                                    width: 74.w,
                                    height: 74.w,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 72.h),
                              child: ListView.builder(
                                shrinkWrap: true,
                                reverse: true,
                                physics: const BouncingScrollPhysics(),
                                itemCount: controller.textMsgList.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                                    child: controller.textMsgList[index]["author"] ==
                                            "0"
                                        ? Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 24.w,
                                                  vertical: 12.h,
                                                ),
                                                margin: EdgeInsets.only(bottom: 16.h),
                                                decoration: BoxDecoration(
                                                  color: AppColors.whiteColor,
                                                  borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(10.r),
                                                    bottomRight:
                                                        Radius.circular(10.r),
                                                    topRight: Radius.circular(10.r),
                                                  ),
                                                ),
                                                child: Text(
                                                  controller.textMsgList[index]
                                                      ["msg"],
                                                  style: circeRegular.copyWith(
                                                    fontSize: 18.sp,
                                                    color: AppColors.khakhiColor,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        : Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 24.w,
                                                  vertical: 12.h,
                                                ),
                                                margin: EdgeInsets.only(bottom: 16.h),
                                                decoration: BoxDecoration(
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: [
                                                      AppColors.gradiantColor2,
                                                      AppColors.gradiantColor3
                                                    ],
                                                  ),
                                                  borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(10.r),
                                                    bottomRight:
                                                        Radius.circular(10.r),
                                                    topLeft: Radius.circular(10.r),
                                                  ),
                                                ),
                                                child: Text(
                                                  controller.textMsgList[index]
                                                      ["msg"],
                                                  style: circeRegular.copyWith(
                                                    fontSize: 18.sp,
                                                    color: AppColors.khakhiColor,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 5.h,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 66.h,
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 40.w),
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                                    child: CustomeTextfield(
                                      hint: 'Write a message',
                                      controller: controller.sendMsgController,
                                      isPasswordField: false,
                                      customMaxLine: 1,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    controller.sendMsgController.clear();
                                    FocusScope.of(context).unfocus();
                                  },
                                  child: Image.asset(
                                    "assets/image/send_msg.png",
                                    height: 55.w,
                                    width: 55.w,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
