import 'package:coffee_now/screens/main_page.dart';
import 'package:coffee_now/screens/track_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderAcceptedPage extends StatelessWidget {
  const OrderAcceptedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/order_success.svg',
              ),
              SizedBox(
                width: 35.w,
              ),
            ],
          ),
          Text(
            'Your Order has been \n accepted',
            style: GoogleFonts.poppins(
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF181725),
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Your items has been placcd and is on \n it’s way to being processed',
            style: GoogleFonts.poppins(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF7C7C7C),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => TrackPage(),
              ));
            },
            child: Container(
              width: double.infinity,
              height: 60.h,
              margin: EdgeInsets.symmetric(
                horizontal: 12.w,
              ),
              decoration: BoxDecoration(
                  color: const Color(0xFF321D0B),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Track Order',
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const MainScreen(),
              ));
            },
            child: Container(
              width: double.infinity,
              height: 60.h,
              margin: EdgeInsets.symmetric(
                horizontal: 12.w,
              ),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Back To Home',
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF321D0B),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
