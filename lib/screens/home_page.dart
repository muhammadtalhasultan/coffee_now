import 'package:coffee_now/screens/favourite_items_page.dart';
import 'package:coffee_now/screens/shop_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
                              style: GoogleFonts.poppins(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF321D0B),
                              ),
                            ),
                            TextSpan(
                              text: 'John!',
                              style: GoogleFonts.poppins(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w600,
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
                            color: const Color(0xFFFF9314),
                            height: 20.h,
                            width: 20.w,
                          ),
                          Text(
                            'Jakarta, Indonesia',
                            style: GoogleFonts.bebasNeue(
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
                          color: const Color(0xFF321D0B),
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
                            color: const Color(0xFF321D0B),
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
                style: GoogleFonts.bebasNeue(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF321D0B),
                ),
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
                style: GoogleFonts.bebasNeue(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF321D0B),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    brandsButton('assets/images/brand1.png'),
                    brandsButton('assets/images/brand2.png'),
                    brandsButton('assets/images/brand3.png'),
                    brandsButton('assets/images/brand4.png'),
                  ],
                ),
              ),
              Text(
                'Coffee shops',
                style: GoogleFonts.bebasNeue(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF321D0B),
                ),
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
            builder: (context) => ShopDetailsPage(),
          ),
        );
      },
      child: Container(
        height: 100,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 5,
              offset: const Offset(0, 1),
            ),
          ],
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
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF2D2D2D),
                  ),
                ),
                Text(
                  items,
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF959595),
                  ),
                ),
                const Spacer(),
                Text(
                  'OPEN NOW',
                  style: GoogleFonts.bebasNeue(
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
                  color: const Color(0xFF959595),
                ),
                Text(
                  distance,
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF959595),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget brandsButton(String asset) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 70.h,
      width: 70.h,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Image.asset(asset),
    );
  }
}
