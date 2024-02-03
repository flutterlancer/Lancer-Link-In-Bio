import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lancer_link_in_bio/utils/assets.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

SliverAppBar appBar(BuildContext context) => SliverAppBar(
      floating: true,
      pinned: true,
      snap: false,
      stretch: true,
      toolbarHeight: kToolbarHeight + 12.h,
      leading: SvgPicture.asset(context.assets.logo).pOnly(left: 12.w),
      title: "LancerBio".text.textStyle(context.themeConfig.headline3).make(),
      actions: [
        TextButton.icon(
          onPressed: () {},
          icon: SvgPicture.asset(context.assets.subscribeIcon),
          label:
              "Subscribe".text.textStyle(context.themeConfig.headline4).make(),
        ),
      ],
      bottom: const TabBar(
        tabs: [Tab(text: "FREEBIES"), Tab(text: "ABOUT")],
      ),
    );
