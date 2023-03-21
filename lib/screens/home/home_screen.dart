import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ofc_port/base/base_view_view_model.dart';
import 'package:ofc_port/res/app_colors.dart';
import 'package:ofc_port/res/style.dart';
import 'package:ofc_port/screens/home/home_binding.dart';

class HomeScreen extends BaseView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: merriweatherRegular.copyWith(
                          fontSize: 18.sp,
                          color: AppColors.liteColor,
                        ),
                      ),
                      Text(
                        "Anastasia",
                        style: merriweatherRegular.copyWith(
                          fontSize: 28.sp,
                          color: AppColors.mainDarkColor,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.message();
                    },
                    child: Container(
                      height: 46.w,
                      width: 46.w,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                      child: Icon(
                        Icons.search_rounded,
                        size: 24.r,
                        color: AppColors.litesColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      height: 78.h,
                      width: double.infinity,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        padding:  EdgeInsets.only(left: 40.w),
                        // itemCount: 1,
                        itemCount: controller.storyList.length + 1,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          // return Container(
                          //   width: 80.w,
                          //   height: 80.w,
                          //   decoration: BoxDecoration(
                          //     shape: BoxShape.circle,
                          //     boxShadow: [
                          //       BoxShadow(
                          //         color: AppColors.pinkLightColor,
                          //         offset: const Offset(
                          //           0.0,
                          //           10.0,
                          //         ), //Offset
                          //         blurRadius: 20.r,
                          //       ), //BoxShadow
                          //     ],
                          //   ),
                          //   child: Image.asset(
                          //     "assets/image/story.png",
                          //     height: 70.w,
                          //     width: 70.w,
                          //     // fit: BoxFit.contain,
                          //   ),
                          // );
                          // child: Image.asset(
                          //   controller.storyList[index],
                          //   width: 80.w,
                          //   height: 80.w,
                          // ),

                          if (index == 0) {
                            return GestureDetector(
                              onTap: (){
                                controller.message();
                              },
                              child: SizedBox(
                                width: 80.w,
                                height: 80.w,

                                // decoration: BoxDecoration(
                                //   shape: BoxShape.circle,
                                //   boxShadow: [
                                //     BoxShadow(
                                //       color: AppColors.pinkLightColor,
                                //       offset: const Offset(
                                //         0.0,
                                //         60.0,
                                //       ), //Offset
                                //       blurRadius: 20.r,
                                //     ), //BoxShadow
                                //   ],
                                // ),
                                child: Image.asset(
                                  "assets/image/story.png",
                                  height: 80.w,
                                  width: 80.w,
                                  // fit: BoxFit.contain,
                                ),
                              ),
                            );
                          } else {
                            var newIndex = index - 1;
                            return GestureDetector(
                              onTap: (){
                                controller.message();
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 14.w),
                                child: Image.asset(
                                  "${controller.storyList[newIndex]}",
                                  width: 80.w,
                                  height: 80.w,
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.sliderHome.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 20.h),
                          child: GestureDetector(
                            onTap: () {
                              controller.profile();
                            },
                            child: Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 40.w),
                              decoration: BoxDecoration(
                                  // shape: BoxShape.circle,
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: AppColors.pinkLightColor,
                                  //     offset: const Offset(
                                  //       0.0,
                                  //       5.0,
                                  //     ), //Offset
                                  //     blurRadius: 50.r,
                                  //   ), //BoxShadow
                                  // ],
                                  ),
                              child: Image.asset(
                                controller.sliderHome[index],
                                width: double.infinity,
                              ),
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
    );
  }
}
