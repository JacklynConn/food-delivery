import 'package:flutter/material.dart';
import 'package:food_delivery/view/auth/otp_screen.dart';
import 'package:food_delivery/view/bottom_navigation_bar.dart';
import 'package:food_delivery/view/browse/browse_screen.dart';
import 'package:sizer/sizer.dart';
import '/view/auth/mobile_login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, _, __) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home:  const BrowseScreen(),
      );
    });
  }
}
