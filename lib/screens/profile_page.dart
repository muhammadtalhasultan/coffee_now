import 'package:coffee_now/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Image.asset('assets/images/profile_picture.png'),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'John Doe',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          tileWidget('Edit Account info', 'assets/icons/edit.svg'),
          tileWidget('Address Info', 'assets/icons/location.svg'),
          tileWidget('Payment Method', 'assets/icons/payment.svg'),
          tileWidget('Rewards or Coupon', 'assets/icons/reward.svg'),
          tileWidget('Settings', 'assets/icons/setting.svg'),
          tileWidget('Privacy Policy', 'assets/icons/document.svg'),
          tileWidget('About Coffee Now Apps', 'assets/icons/about.svg'),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              height: 54.h,
              decoration: BoxDecoration(
                  color: const Color(0xFFE4E4E4),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Logout'.toUpperCase(),
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget tileWidget(String title, String icon) {
    return SizedBox(
      height: 50.h,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              color: const Color(0xFFE8E8E8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              icon,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          SvgPicture.asset('assets/icons/next.svg'),
        ],
      ),
    );
  }
}
