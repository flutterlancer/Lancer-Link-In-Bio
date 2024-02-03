import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lancer_link_in_bio/features/browser/data/browser_options.dart';
import 'package:lancer_link_in_bio/features/browser/presentation/widgets/browser_options_sheet.dart';
import 'package:lancer_link_in_bio/utils/assets.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class BrowserPage extends StatelessWidget {
  const BrowserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        elevation: 1,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(context.assets.closeIcon),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            "LancerBio"
                .text
                .textStyle(
                  context.themeConfig.headline4
                      .copyWith(fontWeight: FontWeight.bold),
                )
                .make(),
            Row(
              children: [
                SvgPicture.asset(context.assets.lockIcon),
                8.w.widthBox,
                "https://himsingh.com/website/"
                    .text
                    .textStyle(context.themeConfig.paragraph1
                        .copyWith(fontWeight: FontWeight.normal))
                    .make()
                    .expand()
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (_) => const BrowserOptionsSheet(),
                backgroundColor: context.themeConfig.transparentColor,
              );
            },
            icon: SvgPicture.asset(context.assets.moreIcon),
          )
        ],
        bottom: LinearProgressIndicator(
          value: 0.4,
          valueColor: AlwaysStoppedAnimation(context.themeConfig.primaryColor),
        ).preferredSize(Size.fromHeight(0.h)),
      ),
      bottomNavigationBar: Container(
        height: 80.h,
        color: context.themeConfig.whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: bottomBrowserOptions
              .map(
                (icon) => IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(icon),
                ),
              )
              .toList(),
        ).px32(),
      ),
    );
  }
}
