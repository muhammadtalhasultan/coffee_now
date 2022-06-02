import 'package:coffee_now/screens/home_page.dart';
import 'package:coffee_now/screens/mybasket_page.dart';
import 'package:coffee_now/screens/profile_page.dart';
import 'package:coffee_now/screens/transaction_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'search_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _widgetOptions = [
    const HomePage(),
    SearchPage(),
    const TransactionPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const MyBasketPage(),
            ));
          },
          child: Container(
            height: 60.h,
            width: 60.w,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0xFFE8E8E8),
                width: 0.6,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: SvgPicture.asset(
              'assets/icons/basket.svg',
              color: Colors.black,
            ),
          ),
        ),
        extendBody: true,
        bottomNavigationBar: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 0,
            ),
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: const Color(0xFF321D0B),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => _onItemTapped(0),
                  child: SvgPicture.asset(
                    'assets/icons/home.svg',
                    height: 24.h,
                    width: 24.h,
                    color: _currentIndex == 0
                        ? Colors.white
                        : const Color(0xff717171),
                  ),
                ),
                InkWell(
                  onTap: () => _onItemTapped(1),
                  child: SvgPicture.asset(
                    'assets/icons/search.svg',
                    height: 24.h,
                    width: 24.h,
                    color: _currentIndex == 1
                        ? Colors.white
                        : const Color(0xff717171),
                  ),
                ),
                InkWell(
                  onTap: () => _onItemTapped(2),
                  child: SvgPicture.asset(
                    'assets/icons/document.svg',
                    height: 24.h,
                    width: 24.h,
                    color: _currentIndex == 2
                        ? Colors.white
                        : const Color(0xff717171),
                  ),
                ),
                InkWell(
                  onTap: () => _onItemTapped(3),
                  child: SvgPicture.asset(
                    'assets/icons/profile.svg',
                    height: 24.h,
                    width: 24.h,
                    color: _currentIndex == 3
                        ? Colors.white
                        : const Color(0xff717171),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          child: _widgetOptions.elementAt(_currentIndex),
        ));
  }
}
