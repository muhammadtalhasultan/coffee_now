import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FavouriteItemsPage extends StatelessWidget {
  const FavouriteItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Favourite Items',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                tileWidget(
                  context,
                  'assets/images/coffee2.png',
                  'Macchiato Short',
                  '\$ 5.00',
                ),
                tileWidget(
                  context,
                  'assets/images/coffee1.png',
                  'Americano',
                  '\$ 5.00',
                ),
              ],
            ),
            Row(
              children: [
                tileWidget(
                  context,
                  'assets/images/coffee3.png',
                  'Caramel Machiato',
                  '\$ 5.00',
                ),
                tileWidget(
                  context,
                  'assets/images/coffee4.png',
                  'Espresso',
                  '\$ 5.00',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget tileWidget(
      BuildContext context, String image, String title, String price) {
    return Container(
      height: 250.h,
      width: MediaQuery.of(context).size.width / 2.3,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).primaryColorLight,
      ),
      child: Stack(
        children: [
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.light
                    ? const Color(0xFF321D0B)
                    : const Color(0xFFFF9314),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Container(
                margin: const EdgeInsets.all(8),
                child: SvgPicture.asset(
                  'assets/icons/basket.svg',
                  height: 20.h,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 160.h,
                width: double.infinity,
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

              Container(
                padding: const EdgeInsets.all(13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    SizedBox(
                      height: 20.w,
                    ),
                    Text(
                      price,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: const Color(0xFFFF9314),
                          ),
                    ),
                  ],
                ),
              ),

              // const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
