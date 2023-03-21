import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ofc_port/base/base_view_view_model.dart';
import 'package:ofc_port/res/app_colors.dart';
import 'package:ofc_port/res/style.dart';
import 'package:ofc_port/screens/profile/profile_binding.dart';

class ProfileScreen extends BaseView<ProfileController> {
  const ProfileScreen({super.key});

  @override
  Widget vBuilder(BuildContext context) {
    //FCF3F4
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [
                AppColors.whiteColor,
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
                height: 12.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "My Profile",
                            style: merriweatherRegular.copyWith(
                              color: AppColors.khakhiColor,
                              fontSize: 28.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Center(
                        child: Container(
                          height: 95.w,
                          width: 95.w,
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
                            "assets/image/profile_pic.png",
                            height: 95.w,
                            width: 95.w,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      SizedBox(
                        height: 280.h,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Image.asset(
                              "assets/image/shape_profile.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                children: [
                                  Text(
                                    "Anastasia Mari",
                                    style: circeRegular.copyWith(
                                      color: AppColors.khakhiColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 28.sp,
                                    ),
                                  ),
                                  Text(
                                    "@ui.sia",
                                    style: circeRegular.copyWith(
                                      color: AppColors.text1Color,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 45.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Photos",
                                          style: circeRegular.copyWith(
                                            color: AppColors.text1Color,
                                            fontSize: 18.sp,
                                          ),
                                        ),
                                        Text(
                                          "567",
                                          style: circeRegular.copyWith(
                                            color: AppColors.khakhiColor,
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Followers",
                                          style: circeRegular.copyWith(
                                            color: AppColors.text1Color,
                                            fontSize: 18.sp,
                                          ),
                                        ),
                                        Text(
                                          "12,454",
                                          style: circeRegular.copyWith(
                                            color: AppColors.khakhiColor,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 24.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Follows",
                                          style: circeRegular.copyWith(
                                            color: AppColors.text1Color,
                                            fontSize: 18.sp,
                                          ),
                                        ),
                                        Text(
                                          "127",
                                          style: circeRegular.copyWith(
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.khakhiColor,
                                            fontSize: 24.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 40.w),
                        child: MasonryGridView.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 20,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: controller.imageData.length,
                            itemBuilder: (context, index) {
                              return   Image.asset(
                                controller.imageData[index],
                              );
                            }),
                      ),
                      SizedBox(
                        height: 20.h,
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
