import 'package:flutter/material.dart';
import 'package:food_delivery/utils/textStyles.dart';

class MobileLoginScreen extends StatefulWidget {
  const MobileLoginScreen({super.key});

  @override
  State<MobileLoginScreen> createState() => _MobileLoginScreenState();
}

class _MobileLoginScreenState extends State<MobileLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello',
          style: AppTextStyles.body16Bold,
        ),
      ),
    );
  }
}
