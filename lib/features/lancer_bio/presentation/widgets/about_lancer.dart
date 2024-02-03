import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/presentation/pages/home_page.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutLancerWidget extends StatelessWidget {
  const AboutLancerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        lancer.headline.text.textStyle(context.themeConfig.headline3).make(),
        4.h.heightBox,
        lancer.bio.text
            .textStyle(context.themeConfig.headline3.copyWith(
              fontWeight: FontWeight.normal,
              color: context.themeConfig.secondaryTextColor,
            ))
            .make(),
      ],
    );
  }
}
