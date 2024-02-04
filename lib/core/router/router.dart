import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:lancer_link_in_bio/core/router/routes.dart';
import 'package:lancer_link_in_bio/features/auth/presentation/pages/login_page.dart';
import 'package:lancer_link_in_bio/features/auth/presentation/pages/welcome_page.dart';
import 'package:lancer_link_in_bio/features/browser/presentation/pages/browser_page.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/presentation/pages/bio_page.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      // initial page
      GoRoute(
        path: "/",
        redirect: (context, state) => AppRoutes.welcome,
      ),
      // welcome (auth pages under this page)
      GoRoute(
        path: AppRoutes.welcome,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: WelcomePage()),
      ),
      GoRoute(
        path: AppRoutes.login,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: LoginPage()),
      ),

      // bio page
      GoRoute(
        path: AppRoutes.bio,
        pageBuilder: (context, state) => const CupertinoPage(child: BioPage()),
      ),
      // web browser
      GoRoute(
        name: AppRoutes.browserRouteName,
        path: "${AppRoutes.browser}/:url",
        builder: (context, state) {
          final String url = state.pathParameters['url'] as String;
          return BrowserPage(url: url);
        },
      ),
    ],
  );
}
