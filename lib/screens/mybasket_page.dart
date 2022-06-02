import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBasketPage extends StatelessWidget {
  const MyBasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'My Basket',
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF2D2D2D),
              ),
            ),
            tileWidget(
              'assets/images/2.jpeg',
              'Starbucks - CSB Mall',
              '2 Items',
              '28, July 2021',
            ),
            tileWidget(
              'assets/images/3.jpeg',
              'KFC Coffee - Kartini Street',
              '2 Items',
              '28, July 2021',
            ),
            tileWidget(
              'assets/images/1.jpeg',
              'Semasa Coffee',
              '2 Items',
              '28, July 2021',
            ),
          ],
        ),
      ),
    );
  }

  Widget tileWidget(String image, String title, String items, String date) {
    return Container(
      padding: const EdgeInsets.all(13),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 70.h,
                width: 70.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF2D2D2D),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 05.h,
                  ),
                  Text(
                    items,
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF959595),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                'Edit',
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFFFF9314),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            color: const Color(0xFFEFEFEF),
            height: 2,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
