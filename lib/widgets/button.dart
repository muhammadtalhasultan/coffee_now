import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 54.h,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: Theme.of(context).textTheme.button,
            // style: GoogleFonts.poppins(
            //     fontSize: 18.sp,
            //     fontWeight: FontWeight.w600,
            //     color: Colors.white),
          ),
        ),
      ),
    );
  }
}
