import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/theme.dart';
import 'screens/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        title: 'Coffee Now',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        home: const SplashPage(),
      ),
    );
  }
}
