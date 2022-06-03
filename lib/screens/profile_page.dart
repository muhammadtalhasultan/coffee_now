import 'package:coffee_now/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 20.h,
          ),
          tileWidget(
            context,
            'Edit Account info',
            'assets/icons/edit.svg',
          ),
          tileWidget(
            context,
            'Address Info',
            'assets/icons/location.svg',
          ),
          tileWidget(
            context,
            'Payment Method',
            'assets/icons/payment.svg',
          ),
          tileWidget(
            context,
            'Rewards or Coupon',
            'assets/icons/reward.svg',
          ),
          tileWidget(
            context,
            'Settings',
            'assets/icons/setting.svg',
          ),
          tileWidget(
            context,
            'Privacy Policy',
            'assets/icons/document.svg',
          ),
          tileWidget(
            context,
            'About Coffee Now Apps',
            'assets/icons/about.svg',
          ),
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
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Logout'.toUpperCase(),
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget tileWidget(BuildContext context, String title, String icon) {
    return SizedBox(
      height: 50.h,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColorLight,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              icon,
              height: 20.h,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.black
                  : Colors.white,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          const Spacer(),
          SvgPicture.asset('assets/icons/next.svg'),
        ],
      ),
    );
  }
}
