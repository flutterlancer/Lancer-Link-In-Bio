import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/presentation/pages/bio_page.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/presentation/widgets/about_lancer.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/presentation/widgets/social_links.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/presentation/widgets/website_button.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../content_link.dart';

class AboutTabWidget extends StatelessWidget {
  const AboutTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.network(lancer.imageUrl, fit: BoxFit.fill)
                .box
                .width(88.w)
                .height(82.h)
                .make()
                .cornerRadius(16.r)
                .box
                .border(
                  width: 2,
                  color: context.themeConfig.whiteColor,
                )
                .withRounded(value: 16.r)
                .make(),
            12.w.widthBox,
            lancer.name.text
                .textStyle(context.themeConfig.headline1)
                .make()
                .expand(),
          ],
        ).px16(),
        const WebsiteButtonWidget().px16(),
        24.h.heightBox,
        const AboutLancerWidget().px16(),
        12.h.heightBox,
        const SocialLinksWidget().pOnly(left: 16.w),
        24.h.heightBox,
        "Link from Content"
            .text
            .textStyle(context.themeConfig.headline1)
            .make()
            .px16(),
        12.h.heightBox,
        ...lancer.contentLinks
            .map((link) => ContentLinkWidget(link: link))
            .toList()
      ],
    ).scrollVertical();
  }
}
