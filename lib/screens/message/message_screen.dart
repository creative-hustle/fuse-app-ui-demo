import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ofc_port/base/base_view_view_model.dart';
import 'package:ofc_port/res/app_colors.dart';
import 'package:ofc_port/res/style.dart';
import 'package:ofc_port/router/router_name.dart';
import 'package:ofc_port/screens/message/message_binding.dart';
import 'package:ofc_port/screens/widget/custome_textfield.dart';

class MessageScreen extends BaseView<MessageController> {
  const MessageScreen({super.key});

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 67.w,
        width: 67.w,
        child: Image.asset(
          "assets/image/edit_ic.png",
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.whiteColor,
                AppColors.bgColor,
                AppColors.bgColor,
                AppColors.bgColor,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        "assets/image/back.png",
                        height: 20.w,
                        width: 20.w,
                      ),
                    ),
                    Image.asset(
                      "assets/image/option.png",
                      height: 24.h,
                      width: 6.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Text(
                  "Conversations",
                  style: merriweatherRegular.copyWith(
                    fontSize: 28.sp,
                    color: AppColors.khakhiColor,
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Container(
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
                    Image.asset(
                      'assets/image/search_ic.png',
                      width: 55.w,
                      height: 55.w,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: CustomeTextfield(
                          hint: 'Search a Friend',
                          controller: controller.searchController,
                          isPasswordField: false,
                          customMaxLine: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24.h,
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 40.w),
                        itemCount: controller.messageList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 32.h),
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(RouterName.chat, arguments: [
                                  controller.messageList[index]["image"],
                                  controller.messageList[index]["name"],
                                ]);
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 56.w,
                                    height: 56.w,
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
                                      controller.messageList[index]["image"],
                                      width: 56.w,
                                      height: 56.w,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 24.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.messageList[index]["name"],
                                        style: circeBold.copyWith(
                                          fontSize: 18.sp,
                                          color: AppColors.khakhiColor,
                                        ),
                                      ),
                                      Text(
                                        controller.messageList[index]["des"],
                                        style: circeRegular.copyWith(
                                          fontSize: 18.sp,
                                          color: AppColors.khakhiColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
