import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Merchant app',
        theme: ThemeData(
          primaryColor: const Color(0xFFAA52C0),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
