// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart' show BuildContext;
import 'package:lancer_link_in_bio/features/lancer_bio/data/models/social_link.dart';

AppAssets appAssets = AppAssets();

class AppAssets {
  static const String _icons = "assets/icons";
  static const String _browserIcons = "assets/icons/browser";
  static const String _loginIcon = "assets/icons/login";

  String logo = "$_icons/logo.svg";
  String subscribeIcon = "$_icons/subscribe.svg";

  String linkArrowIcon = "$_icons/link_arrow.svg";
  String arrowRightIcon = "$_icons/arrow_right.svg";

  // social icons
  String getSocialIcon(SocialLink link) {
    if (link.platformUrl.contains("mailto"))
      return "$_icons/gmail.svg";
    else
      return "$_icons/${link.platform.toLowerCase()}.svg";
  }

  // browser icons
  String refreshIcon = "$_browserIcons/refresh.svg";
  String closeIcon = "$_browserIcons/close.svg";
  String moreIcon = "$_browserIcons/more.svg";
  String shareIcon = "$_browserIcons/share.svg";
  String saveIcon = "$_browserIcons/save.svg";
  String settingsIcon = "$_browserIcons/settings.svg";
  String lockIcon = "$_browserIcons/lock.svg";
  String browserIcon = "$_browserIcons/browser.svg";

  // login icons
  String fbIcon = "$_loginIcon/facebook.svg";
  String googleIcon = "$_loginIcon/google.svg";
}

extension AssetsExt on BuildContext {
  AppAssets get assets => AppAssets();
}
