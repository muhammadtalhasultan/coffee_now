import 'package:coffee_now/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/text_field.dart';
import 'forgot_password_page.dart';
import 'main_page.dart';
import 'register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                  'LOGIN',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              SizedBox(
                height: 25.h,
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
                height: 28.h,
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
                height: 8.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ForgotPasswordPage(),
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password ?',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              ButtonWidget(
                text: 'login',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
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
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don’t have an account? ',
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        TextSpan(
                          text: 'Register ',
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
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 135.w,
                    color: Theme.of(context).dividerColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'or'.toUpperCase(),
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 135.w,
                    color: Theme.of(context).dividerColor,
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  socialButton(context, 'assets/icons/google_logo.svg'),
                  socialButton(context, 'assets/icons/facebook_logo.svg'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialButton(BuildContext context, String asset) {
    return Container(
      padding: const EdgeInsets.all(22),
      height: 70.h,
      width: 70.h,
      decoration: BoxDecoration(
        color: Theme.of(context).shadowColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Theme.of(context).primaryColorDark,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: SvgPicture.asset(asset),
    );
  }
}
