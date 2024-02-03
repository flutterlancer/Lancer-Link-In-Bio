import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/data/models/social_link.dart';
import 'package:lancer_link_in_bio/utils/assets.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class SocialLinkButtonWidget extends StatelessWidget {
  final SocialLink link;
  const SocialLinkButtonWidget({required this.link, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          SvgPicture.asset(
            context.assets.getSocialIcon(link),
          ),
          8.w.widthBox,
          link.platform.text.textStyle(context.themeConfig.headline4).make(),
        ],
      ).px8().cornerRadius(100.r),
    );
  }
}
