import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lancer_link_in_bio/core/widgets/primary_app_button.dart';
import 'package:lancer_link_in_bio/features/auth/presentation/widgets/login_textfield.dart';
import 'package:lancer_link_in_bio/utils/assets.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../core/router/routes.dart';

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      minChildSize: 0.7,
      initialChildSize: 0.7,
      // maxChildSize: 0.9,
      builder: (context, scrollController) => VxBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            "Welcome Back"
                .text
                .textStyle(
                    context.themeConfig.headline1.copyWith(fontSize: 24.sp))
                .make(),
            4.h.heightBox,
            "Enter your login details below"
                .text
                .size(16.sp)
                .color(context.themeConfig.secondaryTextColor)
                .make(),
            30.h.heightBox,
            ListTile(
              onTap: () {},
              leading: SvgPicture.asset(context.assets.googleIcon),
              title: "Continue with Google"
                  .text
                  .textStyle(
                    context.themeConfig.headline3.copyWith(
                        color: context.themeConfig.secondaryTextColor),
                  )
                  .make(),
            )
                .box
                .border(color: context.themeConfig.loginTextFieldBorderColor)
                .withRounded(value: 100.r)
                .make(),
            20.h.heightBox,
            "or"
                .text
                .textStyle(
                  context.themeConfig.headline3.copyWith(
                    color: context.themeConfig.secondaryTextColor,
                    fontWeight: FontWeight.normal,
                  ),
                )
                .makeCentered(),
            20.h.heightBox,
            LoginTextfieldWidget(
              hint: "Enter Your Email ID",
              controller: TextEditingController(),
            ),
            14.h.heightBox,
            LoginTextfieldWidget(
              hint: "Password",
              controller: TextEditingController(),
              obsecure: true,
            ),
            20.h.heightBox,
            TextButton(
              onPressed: () {},
              child: "Forgot Password?"
                  .text
                  .size(16.sp)
                  .normal
                  .color(context.themeConfig.secondaryTextColor)
                  .make(),
            ),
            14.h.heightBox,
            PrimaryAppButtonWidget(
              label: "Login/Sign Up",
              onPressed: () {
                context.push(AppRoutes.bio);
              },
            ),
            14.h.heightBox,
            // TextButton(
            //   onPressed: () {},
            //   child: "I am new here! "
            //       .richText
            //       .textStyle(
            //         context.themeConfig.headline3
            //             .copyWith(fontWeight: FontWeight.normal),
            //       )
            //       .withTextSpanChildren([
            //     TextSpan(
            //       text: "Create new account",
            //       style: context.themeConfig.headline3
            //           .copyWith(color: context.themeConfig.blueColor),
            //     ),
            //   ]).makeCentered(),
            // ),
            // 30.h.heightBox,
          ],
        ).px20().pOnly(top: 40.h).scrollVertical(controller: scrollController),
      )
          .width(1.sw)
          .color(context.themeConfig.whiteColor)
          .customRounded(BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ))
          .make(),
    );
  }
}
