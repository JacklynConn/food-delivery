import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/textStyles.dart';
import 'package:sizer/sizer.dart';

class MobileLoginScreen extends StatefulWidget {
  const MobileLoginScreen({super.key});

  @override
  State<MobileLoginScreen> createState() => _MobileLoginScreenState();
}

class _MobileLoginScreenState extends State<MobileLoginScreen> {
  String selectedCountry = '+855';
  TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
            children: [
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Enter your mobile number',
                style: AppTextStyles.body16,
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      showCountryPicker(
                        context: context,
                        showPhoneCode: true,
                        // optional. Shows phone code before the country name.
                        onSelect: (Country country) {
                          setState(() {
                            selectedCountry = '+${country.phoneCode}';
                          });
                        },
                      );
                    },
                    child: Container(
                      height: 7.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            selectedCountry,
                            style: AppTextStyles.body16,
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                    child: TextField(
                      controller: mobileController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 2.w),
                        hintText: 'Mobile number',
                        hintStyle: AppTextStyles.textFieldHintTextStyle,
                        // filled: true,
                        // fillColor: greyShade3,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.sp),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.sp),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.sp),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.sp),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: Size(90.w, 6.h),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Next',
                        style: AppTextStyles.body16.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 2.w,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 4.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'By proceeding, you consent to get calls, whatsapp or '
                'SMS messages, including by automated means, from '
                'uber and its affiliates to the number provided.',
                style: AppTextStyles.small12.copyWith(color: Colors.grey),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Text(
                      'OR',
                      style: AppTextStyles.small12.copyWith(color: Colors.grey),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(90.w, 6.h),
                  backgroundColor: white,
                  elevation: 2,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Continue with Google',
                        style: AppTextStyles.body14,
                      ),
                    ),
                    Positioned(
                      left: 2.w,
                      child: FaIcon(
                        FontAwesomeIcons.google,
                        color: black,
                        size: 4.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
