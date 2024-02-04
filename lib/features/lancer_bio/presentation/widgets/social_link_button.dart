// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/data/models/social_link.dart';
import 'package:lancer_link_in_bio/utils/assets.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../core/router/routes.dart';

class SocialLinkButtonWidget extends StatelessWidget {
  final SocialLink link;
  const SocialLinkButtonWidget({required this.link, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (link.platformUrl.contains("mailto:"))
          launchUrlString("${link.platformUrl}${link.username}");
        else {
          context.push(
            context.namedLocation(
              AppRoutes.browserRouteName,
              pathParameters: {"url": "${link.platformUrl}/${link.username}"},
            ),
          );
        }
      },
      child: Row(
        children: [
          SvgPicture.asset(
            context.assets.getSocialIcon(link),
          ),
          8.w.widthBox,
          link.platform.text.textStyle(context.themeConfig.headline4).make(),
        ],
      ).cornerRadius(100.r),
    );
  }
}
