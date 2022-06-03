import 'package:coffee_now/screens/order_accepted_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({super.key});

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const OrderAcceptedPage(),
            ),
          );
        },
        child: Container(
          width: double.infinity,
          height: 60.h,
          margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 40.h),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              'Place Order',
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerWidget(context),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Theme.of(context).primaryColorLight,
              child: Text(
                'Deliver to',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 3.h),
                        child: SvgPicture.asset(
                          'assets/icons/location_fill.svg',
                          height: 30.h,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rifqi Arkaanul',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Text(
                            'Cirebon, West Java, Indonesia',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/icons/next.svg',
                    height: 30.h,
                    color: const Color(0xFFA8A8A8),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 3.h),
                        child: SvgPicture.asset(
                          'assets/icons/bike.svg',
                          height: 30.h,
                          color: const Color(0xFFFF9314),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Delivery',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                  Text(
                    'Change Options',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Theme.of(context).primaryColorLight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Summary',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    'Add Items',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: tileWidget(
                'assets/images/3.jpeg',
                'KFC Coffee - Kartini Street',
                '2 Items',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                color: Theme.of(context).dividerColor,
                height: 1,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: const Color(0xFFFF9314),
                        ),
                  ),
                  Text(
                    '\$5.00',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: const Color(0xFFFF9314),
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Fee',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: const Color(0xFFFF9314),
                        ),
                  ),
                  Text(
                    '\$5.00',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: const Color(0xFFFF9314),
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Theme.of(context).primaryColorLight,
              child: Text(
                'Payment Details',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 3.h),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFFF9314),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        child: Text(
                          '\$',
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                    color: const Color(0xFFFF9314),
                                  ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Cash',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                  Text(
                    'Add a Promo',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: const Color(0xFFFF9314),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tileWidget(
    String image,
    String title,
    String items,
  ) {
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
                height: 60.h,
                width: 60.w,
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
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              const Spacer(),
              Text(
                'Edit',
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: const Color(0xFFFF9314),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget headerWidget(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 90.h,
        ),
        Positioned(
          right: 0,
          top: 50,
          left: 0,
          child: Column(
            children: [
              Text(
                'Starbucks - CSB Mall',
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                'Distance from you: 1.2 km',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
        Positioned(
          top: 55,
          left: 15,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                margin: const EdgeInsets.all(8),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
