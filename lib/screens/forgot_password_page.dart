import 'package:coffee_now/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/text_field.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity.w,
          padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 12.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35.h,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 100.w,
                  height: 100.h,
                  child: SvgPicture.asset(
                    Theme.of(context).brightness == Brightness.light
                        ? 'assets/icons/logo.svg'
                        : 'assets/icons/logo_dark.svg',
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Forgot Password'.toUpperCase(),
                  style: GoogleFonts.poppins(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'We’ll send a password reset\n link to your email.',
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF7D7D7D),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                'Email',
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF7D7D7D),
                ),
              ),
              const CustomTextFieldWidget(
                hintText: 'example@gmail.com',
                isPasswordField: false,
              ),
              SizedBox(
                height: 35.h,
              ),
              ButtonWidget(
                text: 'Reset Password',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
