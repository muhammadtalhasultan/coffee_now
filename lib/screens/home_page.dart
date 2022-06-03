import 'package:coffee_now/screens/favourite_items_page.dart';
import 'package:coffee_now/screens/shop_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Hello, ',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            TextSpan(
                              text: 'John!',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                    color: const Color(0xFFFF9314),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/location.svg',
                            color: Theme.of(context).textTheme.headline5!.color,
                            height: 20.h,
                            width: 20.w,
                          ),
                          Text(
                            'Jakarta, Indonesia',
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFFFF9314),
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorLight,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            'assets/icons/ticket.svg',
                            height: 20.h,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const FavouriteItemsPage(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorLight,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            child: SvgPicture.asset(
                              'assets/icons/heart.svg',
                              height: 20.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Image.asset(
                'assets/images/Banner.png',
              ),
              Text(
                'Recommended for you',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    ProductCardWidget(
                      image: 'assets/images/coffee2.png',
                      title: 'Macchiato Short',
                      price: '\$ 5.00',
                    ),
                    ProductCardWidget(
                      image: 'assets/images/coffee1.png',
                      title: 'Americano',
                      price: '\$ 5.00',
                    ),
                    ProductCardWidget(
                      image: 'assets/images/coffee3.png',
                      title: 'Caramel Machiato',
                      price: '\$ 5.00',
                    ),
                    ProductCardWidget(
                      image: 'assets/images/coffee4.png',
                      title: 'Espresso',
                      price: '\$ 5.00',
                    ),
                  ],
                ),
              ),
              Text(
                'popular brand',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    brandsButton(context, 'assets/images/brand1.png'),
                    brandsButton(context, 'assets/images/brand2.png'),
                    brandsButton(context, 'assets/images/brand3.png'),
                    brandsButton(context, 'assets/images/brand4.png'),
                  ],
                ),
              ),
              Text(
                'Coffee shops',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              tileWidget(
                context,
                'assets/images/2.jpeg',
                'Starbucks - CSB Mall',
                '10.00 AM - 12.00 PM',
                '1.2 km',
              ),
              tileWidget(
                context,
                'assets/images/3.jpeg',
                'KFC Coffee - Kartini',
                '10.00 AM - 12.00 PM',
                '2.0 km',
              ),
              tileWidget(
                context,
                'assets/images/1.jpeg',
                'Semasa Coffee',
                '10.00 AM - 12.00 PM',
                '2.5 km',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tileWidget(BuildContext context, String image, String title,
      String items, String distance) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ShopDetailsPage(),
          ),
        );
      },
      child: Container(
        height: 100,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).primaryColorLight,
        ),
        child: Row(
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
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: 12.sp,
                      ),
                ),
                Text(
                  items,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 10.sp,
                      ),
                ),
                const Spacer(),
                Text(
                  'OPEN NOW',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFFF9314),
                      ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/location.svg',
                  height: 12.h,
                  color: Theme.of(context).textTheme.headline6!.color,
                ),
                Text(
                  distance,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 10.sp,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget brandsButton(BuildContext context, String asset) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 70.h,
      width: 70.h,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(asset),
    );
  }
}
