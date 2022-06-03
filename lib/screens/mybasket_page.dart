import 'package:coffee_now/screens/order_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBasketPage extends StatelessWidget {
  const MyBasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const OrderDetailsPage(),
            ),
          );
        },
        child: Container(
          width: double.infinity,
          height: 60.h,
          margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 40.h),
          decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.light
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).primaryColorLight,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? const Color(0xFF273244)
                          : const Color(0xFF323232),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    '   1   ',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                SizedBox(
                  width: 60.w,
                ),
                Text(
                  'Go to Checkout',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                ),
                SizedBox(
                  width: 30.w,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? const Color(0xFF273244)
                          : const Color(0xFF323232),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    '\$10.00',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'My Basket',
              style: Theme.of(context).textTheme.headline3,
            ),
            tileWidget(
              context,
              'assets/images/2.jpeg',
              'Starbucks - CSB Mall',
              '2 Items',
              '28, July 2021',
            ),
            tileWidget(
              context,
              'assets/images/3.jpeg',
              'KFC Coffee - Kartini Street',
              '2 Items',
              '28, July 2021',
            ),
            tileWidget(
              context,
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

  Widget tileWidget(BuildContext context, String image, String title,
      String items, String date) {
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
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 05.h,
                  ),
                  Text(
                    items,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontSize: 10.sp,
                        ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                'Edit',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            color: Theme.of(context).dividerColor,
            height: 2,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
