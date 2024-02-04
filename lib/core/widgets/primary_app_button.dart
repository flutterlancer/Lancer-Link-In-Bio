import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class PrimaryAppButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const PrimaryAppButtonWidget(
      {super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: MaterialButton(
        onPressed: onPressed,
        child: label.text
            .textStyle(
              context.themeConfig.headline3.copyWith(
                color: context.themeConfig.whiteColor,
                fontSize: 20.sp,
              ),
            )
            .makeCentered(),
      ),
    )
        .width(1.sw)
        .height(60.h)
        .color(context.themeConfig.loginScaffoldBgColor)
        .make()
        .cornerRadius(12.r);
  }
}
