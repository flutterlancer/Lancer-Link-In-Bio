import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lancer_link_in_bio/core/router/routes.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/presentation/pages/bio_page.dart';
import 'package:lancer_link_in_bio/utils/assets.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class WebsiteButtonWidget extends StatelessWidget {
  const WebsiteButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: MaterialButton(
        onPressed: () {
          context.push(
            context.namedLocation(
              AppRoutes.browserRouteName,
              pathParameters: {"url": lancer.website},
            ),
          );
        },
        child: Row(
          children: [
            SvgPicture.asset(context.assets.linkArrowIcon),
            const Spacer(),
            "Personal Website"
                .text
                .textStyle(
                  context.themeConfig.headline3
                      .copyWith(color: context.themeConfig.whiteColor),
                )
                .make(),
            const Spacer(),
          ],
        ).centered(),
      ),
    )
        .width(1.sw)
        .height(56.h)
        .color(context.themeConfig.primaryTextColor)
        .make()
        .cornerRadius(100.r)
        .pOnly(top: 16.h, bottom: 12.h);
  }
}
