import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lancer_link_in_bio/utils/assets.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class LaunchButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final double? arrowAngleDir;
  const LaunchButtonWidget(
      {required this.onTap, this.arrowAngleDir, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: VxBox(
        child: SvgPicture.asset(context.assets.arrowRightIcon)
            .rotate(arrowAngleDir ?? 0)
            .centered(),
      )
          .width(36.w)
          .height(36.h)
          .color(context.themeConfig.primaryColor)
          .withRounded(value: 12.r)
          .make(),
    );
  }
}
