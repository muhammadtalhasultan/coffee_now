import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/coffee.png',
                fit: BoxFit.fitWidth,
                width: double.infinity.w,
              ),
            ],
          ),
          Positioned(
            bottom: size.height.h * 0.05,
            left: 0.w,
            right: 0.w,
            child: SizedBox(
              width: size.width.w * .5,
              height: 80.h,
              child: SvgPicture.asset(
                'assets/icons/coffee_now.svg',
              ),
            ),
          ),
          Positioned(
            top: 510.w,
            left: 0.w,
            right: 0.w,
            child: SizedBox(
              width: 150.w,
              height: 150.h,
              child: SvgPicture.asset('assets/icons/logo.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
