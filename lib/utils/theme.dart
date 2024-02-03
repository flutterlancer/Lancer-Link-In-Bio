import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        useMaterial3: true,
        fontFamily: "Inter",
        primaryColor: context.themeConfig.primaryColor,
        scaffoldBackgroundColor: context.themeConfig.scaffoldBgColor,
        appBarTheme: context.themeConfig.appBarTheme,
        tabBarTheme: context.themeConfig.tabBarTheme,
        textButtonTheme: context.themeConfig.textButtonTheme,
      );
}

class BioThemeConfig {
  get primaryColor => const Color(0xffBEF264);
  get primaryTextColor => const Color(0xff111826);
  get secondaryTextColor => const Color(0xff64748A);
  get scaffoldBgColor => const Color(0xffFFFFFF);
  get whiteColor => const Color(0xffFFFFFF);
  Color get blackColor => const Color(0xff000000);
  get transparentColor => Colors.transparent;
  get textButtonOverlayColor => secondaryTextColor.withOpacity(0.1);

  TextButtonThemeData get textButtonTheme => TextButtonThemeData(
          style: ButtonStyle(
        overlayColor: MaterialStatePropertyAll(textButtonOverlayColor),
      ));

  AppBarTheme get appBarTheme => AppBarTheme(
        backgroundColor: whiteColor,
        surfaceTintColor: whiteColor,
        elevation: 0,
      );

  TextStyle get headline1 => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: primaryTextColor,
      );
  // heading 2
  TextStyle get headline2 => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        color: primaryTextColor,
      );
  // heading 3
  TextStyle get headline3 => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: primaryTextColor,
      );
  // paragraph 4
  TextStyle get headline4 => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: primaryTextColor,
      );
  // paragraph 1
  TextStyle get paragraph1 => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: primaryTextColor,
      );

  TabBarTheme get tabBarTheme => TabBarTheme(
        labelStyle: headline2,
        dividerColor: transparentColor,
        unselectedLabelStyle: headline2.copyWith(color: secondaryTextColor),
        indicator: const BoxDecoration(),
        overlayColor: MaterialStatePropertyAll(textButtonOverlayColor),
      );

  BoxShadow get contentTileShadow => BoxShadow(
        color: blackColor.withOpacity(0.1),
        offset: const Offset(0, 2),
        blurRadius: 4.r,
        spreadRadius: 0,
      );
}

extension ThemeExt on BuildContext {
  BioThemeConfig get themeConfig => BioThemeConfig();
}
