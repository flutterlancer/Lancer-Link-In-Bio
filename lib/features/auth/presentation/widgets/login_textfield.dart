import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';

class LoginTextfieldWidget extends StatelessWidget {
  final String hint;
  final bool obsecure;
  final TextEditingController controller;
  const LoginTextfieldWidget({
    super.key,
    required this.hint,
    this.obsecure = false,
    required this.controller,
  });

  static _border(BuildContext context) => OutlineInputBorder(
        borderSide: BorderSide(
          color: context.themeConfig.loginTextFieldBorderColor,
        ),
        borderRadius: BorderRadius.circular(12.r),
      );

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecure,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: context.themeConfig.loginTextFieldHintStyle,
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        enabledBorder: _border(context),
        focusedBorder: _border(context),
      ),
    );
  }
}
