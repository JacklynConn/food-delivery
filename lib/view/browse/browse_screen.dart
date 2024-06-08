import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/textStyles.dart';
import 'package:sizer/sizer.dart';

class BrowseScreen extends StatefulWidget {
  const BrowseScreen({super.key});

  @override
  State<BrowseScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  List categories = [
    ['assets/images/categories/alcohol', 'Alcohol'],
    ['assets/images/categories/american', 'American'],
    ['assets/images/categories/asian', 'Asian'],
    ['assets/images/categories/burger', 'Burger'],
    ['assets/images/categories/carrebian', 'Carrebian'],
    ['assets/images/categories/chinese', 'Chinese'],
    ['assets/images/categories/convenience', 'Convenience'],
    ['assets/images/categories/dessert', 'Dessert'],
    ['assets/images/categories/fastFood', 'Fast Food'],
    ['assets/images/categories/flower', 'Flower'],
    ['assets/images/categories/french', 'French'],
    ['assets/images/categories/grocery', 'Grocery'],
    ['assets/images/categories/halal', 'Halal'],
    ['assets/images/categories/icecream', 'Ice cream'],
    ['assets/images/categories/indian', 'Indian'],
    ['assets/images/categories/petSupplies', 'Pet Supplies'],
    ['assets/images/categories/retails', 'Retails'],
    ['assets/images/categories/ride', 'Ride'],
    ['assets/images/categories/takeout', 'Takeout'],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          children: [
            SizedBox(height: 2.h),
            Text(
              'All categories',
              style: AppTextStyles.body16,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 2.h),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 0.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: greyShade3,
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                        child: Image(
                          image: AssetImage(
                            '${categories[index][0]}.png',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.5.h),
                    Text(
                      categories[index][1],
                      style: AppTextStyles.small10Bold,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
