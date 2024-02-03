import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/data/models/lancer_link.dart';
import 'package:lancer_link_in_bio/utils/assets.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class ContentLinkWidget extends StatelessWidget {
  final LancerLink link;
  const ContentLinkWidget({required this.link, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 16.w, right: 16.w),
        title: link.title!.text.uppercase
            .textStyle(context.themeConfig.headline4)
            .make()
            .py20(),
        trailing: VxBox(
          child: SvgPicture.asset(context.assets.arrowRightIcon).centered(),
        )
            .width(36.w)
            .height(36.h)
            .color(context.themeConfig.primaryColor)
            .withRounded(value: 12.r)
            .make(),
      )
          .box
          .color(context.themeConfig.whiteColor)
          .withRounded(value: 16.r)
          .withShadow([context.themeConfig.contentTileShadow])
          .make()
          .pOnly(bottom: 12.h),
    );
  }
}
