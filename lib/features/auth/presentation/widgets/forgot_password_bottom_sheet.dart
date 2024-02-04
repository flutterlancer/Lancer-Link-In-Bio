import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../core/widgets/primary_app_button.dart';
import 'login_textfield.dart';

class ForgotPasswordBottomSheet extends StatelessWidget {
  const ForgotPasswordBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          "Forgot Password"
              .text
              .textStyle(
                  context.themeConfig.headline1.copyWith(fontSize: 24.sp))
              .make(),
          4.h.heightBox,
          "Enter your email address and we will send you a reset instructions."
              .text
              .size(16.sp)
              .color(context.themeConfig.secondaryTextColor)
              .make(),
          20.h.heightBox,
          LoginTextfieldWidget(
            hint: "Enter Your Email ID",
            controller: TextEditingController(),
          ),
          14.h.heightBox,
          PrimaryAppButtonWidget(
            label: "Reset password",
            onPressed: () {
              // context.push(AppRoutes.bio);
            },
          ),
          20.h.heightBox,
        ],
      ).px20().pOnly(top: 40.h).scrollVertical(),
    )
        .width(1.sw)
        .color(context.themeConfig.whiteColor)
        .customRounded(BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ))
        .make();
  }
}
