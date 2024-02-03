import 'package:go_router/go_router.dart';
import 'package:lancer_link_in_bio/core/router/routes.dart';
import 'package:lancer_link_in_bio/features/browser/presentation/pages/browser_page.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      // initial page
      GoRoute(
        path: "/",
        redirect: (context, state) => AppRoutes.browser,
      ),
      // web browser
      GoRoute(
        path: AppRoutes.browser,
        builder: (context, state) => const BrowserPage(),
      ),
    ],
  );
}
