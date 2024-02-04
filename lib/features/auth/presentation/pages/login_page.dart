import 'package:flutter/material.dart';
import 'package:lancer_link_in_bio/features/auth/presentation/widgets/login_bottom_sheet.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.themeConfig.loginScaffoldBgColor,
      bottomSheet: const LoginBottomSheet(),
    );
  }
}
