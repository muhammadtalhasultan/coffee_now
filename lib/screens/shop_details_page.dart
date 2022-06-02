import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/product_card.dart';

class ShopDetailsPage extends StatelessWidget {
  ShopDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerWidget(context),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tagWidget('Hot Coffee'),
                  tagWidget('Iced Coffee'),
                  tagWidget('Salads'),
                  tagWidget('Burger & Sandwich'),
                ],
              ),
            ),
            Row(
              children: const [
                ProductCardWidget(
                  image: 'assets/images/coffee2.png',
                  title: 'Macchiato Short',
                  price: '\$ 5.00',
                ),
                ProductCardWidget(
                  image: 'assets/images/coffee1.png',
                  title: 'Americano',
                  price: '\$ 5.00',
                ),
              ],
            ),
            Row(
              children: const [
                ProductCardWidget(
                  image: 'assets/images/coffee3.png',
                  title: 'Caramel Machiato',
                  price: '\$ 5.00',
                ),
                ProductCardWidget(
                  image: 'assets/images/coffee4.png',
                  title: 'Espresso',
                  price: '\$ 5.00',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget tagWidget(String title) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFE9E9E9),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget headerWidget(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/shop.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Starbucks - CSB Mall',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/location.svg',
                    height: 16.h,
                    color: Colors.white,
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    '1.2 Km',
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 7.w),
                  Container(
                    height: 4.h,
                    width: 4.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  SvgPicture.asset(
                    'assets/icons/star.svg',
                    height: 16.h,
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    '4.6 (342)',
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/bike.svg',
                    height: 16.h,
                    color: Colors.white,
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    '\$5.00',
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    height: 4.h,
                    width: 4.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  SvgPicture.asset(
                    'assets/icons/time.svg',
                    height: 16.h,
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    '10.00 AM - 12.00 PM',
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 15,
          top: 40,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              margin: const EdgeInsets.all(8),
              child: SvgPicture.asset(
                'assets/icons/heart.svg',
                height: 20.h,
              ),
            ),
          ),
        ),
        Positioned(
          top: 40,
          left: 15,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                margin: const EdgeInsets.all(8),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
