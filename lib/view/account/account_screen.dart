import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:sizer/sizer.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {

  List account = [
    [FontAwesomeIcons.shop, 'Orders'],
    [FontAwesomeIcons.heart, 'Your Favorites'],
    [FontAwesomeIcons.star, 'Restaurants Rewards'],
    [FontAwesomeIcons.wallet, 'Wallet'],
    [FontAwesomeIcons.gift, 'Send a gift'],
    [FontAwesomeIcons.suitcase, 'Business orders'],
    [FontAwesomeIcons.person, 'Help'],
    [FontAwesomeIcons.tag, 'Promotions'],
    [FontAwesomeIcons.ticket, 'Uber Pass'],
    [FontAwesomeIcons.suitcase, 'Deliver with Uber'],
    [FontAwesomeIcons.gear, 'Settings'],
    [FontAwesomeIcons.powerOff, 'Sign out'],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          children: [
            SizedBox(height: 6.h),
            Row(
              children: [
                SizedBox(width: 2.w),
                CircleAvatar(
                  radius: 4.h,
                  backgroundColor: greyShade3,
                  child: const Icon(FontAwesomeIcons.user),
                ),
                SizedBox(width: 2.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'View and edit profile',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 2.h),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: account.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: FaIcon(account[index][0]),
                  title: Text(account[index][1]),
                  trailing: const Icon(Icons.arrow_forward_ios),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
