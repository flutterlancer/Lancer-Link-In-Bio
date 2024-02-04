import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lancer_link_in_bio/core/router/routes.dart';
import 'package:lancer_link_in_bio/core/widgets/primary_app_button.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class WelcomeBottomsheet extends StatelessWidget {
  const WelcomeBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          "Welcome to LancerBio"
              .text
              .textStyle(
                context.themeConfig.headline1.copyWith(fontSize: 24.sp),
              )
              .make(),
          10.h.heightBox,
          "Read our "
              .richText
              .withTextSpanChildren([
                TextSpan(
                  text: "Privacy Policy.",
                  style: context.themeConfig.headline3.copyWith(
                    fontWeight: FontWeight.normal,
                    color: context.themeConfig.blueColor,
                  ),
                ),
                const TextSpan(
                  text: " Tap ”Get Started” to accept the ",
                ),
                TextSpan(
                  text: "Terms of Service.",
                  style: context.themeConfig.headline3.copyWith(
                    fontWeight: FontWeight.normal,
                    color: context.themeConfig.blueColor,
                  ),
                ),
              ])
              .size(16.sp)
              .color(context.themeConfig.secondaryTextColor)
              .center
              .make(),
          40.h.heightBox,
          PrimaryAppButtonWidget(
            label: "Get Started",
            onPressed: () {
              context.push(AppRoutes.login);
            },
          ),
          // 20.h.heightBox,
          // TextButton(
          //   onPressed: () {},
          //   child: "Already have an account? "
          //       .richText
          //       .textStyle(context.themeConfig.headline3
          //           .copyWith(fontSize: 16.sp, fontWeight: FontWeight.normal))
          //       .withTextSpanChildren([
          //     TextSpan(
          //       text: "Login",
          //       style: context.themeConfig.headline3
          //           .copyWith(color: context.themeConfig.blueColor),
          //     ),
          //   ]).make(),
          // ),
          20.h.heightBox,
        ],
      ).px20().pOnly(top: 40.h),
    )
        .width(1.sw)
        .color(context.themeConfig.whiteColor)
        .customRounded(BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ))
        .make();
  }
}
