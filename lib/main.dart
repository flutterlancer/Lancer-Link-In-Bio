import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_link_in_bio/di.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/presentation/pages/home_page.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';

void main() {
  injectDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: Builder(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Lancer LinkInBio',
          theme: AppTheme.lightTheme(context),
          home: const BioPage(),
        );
      }),
    );
  }
}
