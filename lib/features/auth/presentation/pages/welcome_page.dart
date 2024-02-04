import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lancer_link_in_bio/features/auth/presentation/widgets/welcome_bottom_sheet.dart';
import 'package:lancer_link_in_bio/utils/assets.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.themeConfig.loginScaffoldBgColor,
      body: Hero(
        tag: "logo",
        child: Material(
          color: context.themeConfig.transparentColor,
          child: SvgPicture.asset(
            context.assets.logo,
            color: context.themeConfig.whiteColor,
          )
              .scale(scaleValue: 8)
              .centered()
              .box
              .width(1.sw)
              .height(450.h)
              .make(),
        ),
      ),
      bottomSheet: const WelcomeBottomsheet(),
    );
  }
}
