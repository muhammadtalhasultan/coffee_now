import 'package:coffee_now/screens/login_page.dart';
import 'package:coffee_now/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/text_field.dart';
import 'address_setup_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                height: 10.h,
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
                height: 5.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Register'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                'Full Name',
                style: Theme.of(context).textTheme.headline6,
              ),
              const CustomTextFieldWidget(
                hintText: 'Jason Ranti',
                isPasswordField: false,
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Email',
                style: Theme.of(context).textTheme.headline6,
              ),
              const CustomTextFieldWidget(
                hintText: 'example@gmail.com',
                isPasswordField: false,
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Phone Number',
                style: Theme.of(context).textTheme.headline6,
              ),
              const CustomTextFieldWidget(
                hintText: '+62 8777 2221',
                isPasswordField: false,
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Password',
                style: Theme.of(context).textTheme.headline6,
              ),
              const CustomTextFieldWidget(
                hintText: '********',
                isPasswordField: true,
              ),
              SizedBox(
                height: 35.h,
              ),
              ButtonWidget(
                text: 'Register',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AddressSetupPage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 12.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        TextSpan(
                          text: 'Login ',
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
