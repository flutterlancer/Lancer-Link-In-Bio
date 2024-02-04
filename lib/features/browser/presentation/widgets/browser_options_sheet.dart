// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lancer_link_in_bio/features/browser/data/browser_options.dart';
import 'package:lancer_link_in_bio/utils/assets.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class BrowserOptionsSheet extends StatelessWidget {
  final WebViewXController controller;
  const BrowserOptionsSheet(this.controller, {super.key});

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
              SvgPicture.asset(context.assets.logo, width: 25.w, height: 25.h),
              const Spacer(flex: 2),
              "More Options"
                  .text
                  .textStyle(context.themeConfig.headline3)
                  .make(),
              const Spacer(flex: 3),
            ],
          ),
          34.h.heightBox,
          ...extraBrowserOptions.mapIndexed(
            (option, i) {
              return ListTile(
                onTap: () async {
                  context.pop();
                  if (i == 0)
                    await controller.reload();
                  else if (i == 2) {
                    final content = await controller.getContent();
                    await launchUrlString(
                      content.source,
                      mode: LaunchMode.externalApplication,
                    );
                  }
                },
                contentPadding: EdgeInsets.zero,
                horizontalTitleGap: 24.w,
                leading: SvgPicture.asset(
                  option['icon']!,
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
              );
            },
          ).toList(),
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
