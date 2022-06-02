import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final List<String> chipsList = [
    'Hot Coffee',
    'Iced Coffee',
    'Salads',
    'Burger',
    'Sandwich',
    'Pizza',
  ];
  final List<String> historyList = [
    'Hot Coffee',
    'Iced Coffee',
    'Salads',
    'Burger',
    'Sandwich',
    'Pizza',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15.w,
            vertical: 25.h,
          ),
          child: Column(
            children: [
              Text(
                'Search',
                style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF2D2D2D),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  border: Border.all(
                    color: const Color(0xFFEBEBEB),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  cursorColor: const Color(0xFF151624),
                  decoration: InputDecoration(
                    hintText: '',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF7D7D7D),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/icons/search.svg',
                      ),
                    ),
                    border: InputBorder.none,
                    filled: true,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  clipBehavior: Clip.hardEdge,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Chip(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    backgroundColor: const Color(0xFFF4F4F4),
                    label: Text(
                      chipsList[index],
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF848484),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'RECENT',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2D2D2D),
                    ),
                  ),
                  Text(
                    'Clear All',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2FDBBC),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              historyWidget('Coffee'),
              historyWidget('Burger'),
              historyWidget('Iced Coffee'),
              historyWidget('Tuna'),
              historyWidget('Macchiato Short'),
              historyWidget('Caramel Machiato'),
              const Spacer(
                flex: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget historyWidget(String title) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/history.svg',
            width: 20.w,
            height: 20.h,
          ),
          SizedBox(
            width: 15.h,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xFFA3A3A3),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.close,
            color: Color(0xFFA3A3A3),
          ),
        ],
      ),
    );
  }
}
