import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lancer_link_in_bio/features/browser/data/browser_options.dart';
import 'package:lancer_link_in_bio/utils/assets.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class BrowserOptionsSheet extends StatelessWidget {
  const BrowserOptionsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          12.h.heightBox,
          VxBox()
              .height(4.h)
              .width(50.w)
              .color(context.themeConfig.textButtonOverlayColor)
              .make(),
          12.h.heightBox,
          Row(
            children: [
              SvgPicture.asset(context.assets.logo, width: 40.w, height: 40.h),
              const Spacer(flex: 2),
              "More Options"
                  .text
                  .textStyle(context.themeConfig.headline3)
                  .make(),
              const Spacer(flex: 3),
            ],
          ),
          34.h.heightBox,
          ...extraBrowserOptions
              .map(
                (option) => ListTile(
                  contentPadding: EdgeInsets.zero,
                  horizontalTitleGap: 24.w,
                  leading: SvgPicture.asset(
                    option['icon'] as String,
                    width: 28.w,
                    height: 28.h,
                  )
                      .centered()
                      .p8()
                      .box
                      .width(40.w)
                      .height(40.w)
                      .withRounded(value: 12.r)
                      .color(context.themeConfig.textButtonOverlayColor)
                      .make(),
                  title: (option['label'] as String)
                      .text
                      .textStyle(context.themeConfig.headline3)
                      .make(),
                ),
              )
              .toList(),
          20.h.heightBox,
        ],
      ).px16(),
    )
        .color(context.themeConfig.whiteColor)
        .customRounded(BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ))
        .width(1.sw)
        .make();
  }
}
