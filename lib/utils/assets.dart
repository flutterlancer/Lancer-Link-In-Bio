// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart' show BuildContext;
import 'package:lancer_link_in_bio/features/lancer_bio/data/models/social_link.dart';

class AppAssets {
  static const String _icons = "assets/icons";

  String logo = "$_icons/logo.svg";
  String subscribe = "$_icons/subscribe.svg";

  String linkArrowIcon = "$_icons/link_arrow.svg";
  String arrowRightIcon = "$_icons/arrow_right.svg";

  // social icons
  String getSocialIcon(SocialLink link) {
    if (link.platformUrl.contains("mailto"))
      return "$_icons/gmail.svg";
    else
      return "$_icons/${link.platform.toLowerCase()}.svg";
  }
}

extension AssetsExt on BuildContext {
  AppAssets get assets => AppAssets();
}
