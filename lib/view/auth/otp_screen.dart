import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/textStyles.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpController = TextEditingController();
  StreamController<ErrorAnimationType> errorController =
      StreamController<ErrorAnimationType>();
  int resendOTPCounter = 60;

  decreaseOTPCounter() async {
    if (resendOTPCounter > 0) {
      setState(() {
        resendOTPCounter -= 1;
      });
      await Future.delayed(const Duration(seconds: 1), () {
        decreaseOTPCounter();
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      decreaseOTPCounter();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Stack(
          children: [
            Positioned(
              left: 5.w,
              bottom: 5.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: greyShade3,
                    elevation: 2,
                    shape: const CircleBorder()),
                child: FaIcon(
                  FontAwesomeIcons.arrowLeft,
                  size: 4.h,
                  color: black,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 5.h,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: greyShade3,
                  elevation: 2,
                ),
                child: Row(
                  children: [
                    Text(
                      'Next',
                      style: AppTextStyles.body14.copyWith(color: black),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    FaIcon(
                      FontAwesomeIcons.arrowRight,
                      size: 4.h,
                      color: black,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          children: [
            SizedBox(
              height: 3.h,
            ),
            Text(
              'Enter the 6-digit code sent to you at +85583973138',
              style: AppTextStyles.small12,
            ),
            SizedBox(
              height: 3.h,
            ),
            PinCodeTextField(
              length: 6,
              appContext: context,
              obscureText: false,
              animationType: AnimationType.fade,
              textStyle: AppTextStyles.body14,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                fieldHeight: 50,
                fieldWidth: 50,
                activeFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                inactiveColor: greyShade3,
                selectedColor: black,
                selectedFillColor: Colors.white,
                activeColor: Colors.blueAccent,
              ),
              animationDuration: const Duration(milliseconds: 300),
              backgroundColor: transparent,
              enableActiveFill: true,
              errorAnimationController: errorController,
              controller: otpController,
              onCompleted: (v) {},
              onChanged: (value) {},
              beforeTextPaste: (text) {
                return true;
              },
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                  decoration: BoxDecoration(
                    color: greyShade3,
                    borderRadius: BorderRadius.circular(50.sp),
                  ),
                  child: Text(
                    'I haven\'t received the code (0:$resendOTPCounter)',
                    style: AppTextStyles.body14.copyWith(
                      color: resendOTPCounter > 0 ? black38 : black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
