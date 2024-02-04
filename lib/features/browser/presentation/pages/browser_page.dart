// ignore_for_file: curly_braces_in_flow_control_structures, deprecated_member_use

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lancer_link_in_bio/features/browser/data/browser_options.dart';
import 'package:lancer_link_in_bio/features/browser/presentation/widgets/browser_options_sheet.dart';
import 'package:lancer_link_in_bio/utils/assets.dart';

import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class BrowserPage extends StatefulWidget {
  final String url;

  const BrowserPage({super.key, required this.url});

  @override
  State<BrowserPage> createState() => _BrowserPageState();
}

class _BrowserPageState extends State<BrowserPage> {
  WebViewXController? _xController;

  @override
  void dispose() {
    _xController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await _xController!.canGoBack()) return false;
        await _xController!.goBack();
        return true;
      },
      child: Scaffold(
        appBar: browserAppBar(context, widget.url),
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
        body: WebViewX(
          initialContent: widget.url,
          onWebResourceError: (error) {},
          onWebViewCreated: (controller) async {
            _xController = controller;
          },
          width: 1.sw,
          height: 1.sh - 160.h,
        ),
      ),
    );
  }

  AppBar browserAppBar(BuildContext context, String url) => AppBar(
        toolbarHeight: 80.h,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
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
                url.text
                    .textStyle(context.themeConfig.paragraph1
                        .copyWith(fontWeight: FontWeight.normal))
                    .ellipsis
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
                builder: (_) => BrowserOptionsSheet(_xController!),
                backgroundColor: context.themeConfig.transparentColor,
                useRootNavigator: false,
              );
            },
            icon: SvgPicture.asset(context.assets.moreIcon),
          )
        ],
        bottom: LinearProgressIndicator(
          value: 0.2,
          valueColor:
              AlwaysStoppedAnimation(context.themeConfig.primaryTextColor),
        ).preferredSize(Size.fromHeight(0.h)),
      );
}
