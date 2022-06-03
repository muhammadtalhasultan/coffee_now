import 'package:coffee_now/screens/main_page.dart';
import 'package:coffee_now/screens/track_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.center,
          ),
          Text(
            'Your items has been placcd and is on \n it’s way to being processed',
            style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const TrackPage(),
              ));
            },
            child: Container(
              width: double.infinity,
              height: 60.h,
              margin: EdgeInsets.symmetric(
                horizontal: 12.w,
              ),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Track Order',
                  style: Theme.of(context).textTheme.button,
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
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
