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
                height: 50.h,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  border: Border.all(
                    color: Theme.of(context).primaryColorDark,
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
                    hintText: 'Search',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).textTheme.headline6!.color,
                    ),
                    border: InputBorder.none,
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/icons/search.svg',
                      ),
                    ),
                    fillColor: Theme.of(context).primaryColorLight,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
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
                    backgroundColor: Theme.of(context).primaryColorLight,
                    label: Text(
                      chipsList[index],
                      style: Theme.of(context).textTheme.headline6,
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
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Text(
                    'Clear All',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: const Color(0xFF2FDBBC),
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              historyWidget(context, 'Coffee'),
              historyWidget(context, 'Burger'),
              historyWidget(context, 'Iced Coffee'),
              historyWidget(context, 'Tuna'),
              historyWidget(context, 'Macchiato Short'),
              historyWidget(context, 'Caramel Machiato'),
              const Spacer(
                flex: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget historyWidget(BuildContext context, String title) {
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
            style: Theme.of(context).textTheme.headline6,
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
