import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF2D2D2D),
              ),
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
      child: Stack(
        children: [
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF321D0B),
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
                  color: Colors.blue,
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
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF2D2D2D),
                      ),
                    ),
                    SizedBox(
                      height: 20.w,
                    ),
                    Text(
                      price,
                      style: GoogleFonts.bebasNeue(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
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
