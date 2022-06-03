import 'package:coffee_now/screens/login_page.dart';
import 'package:coffee_now/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/text_field.dart';

class AddressSetupPage extends StatelessWidget {
  const AddressSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity.w,
          padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 12.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 100.w,
                  height: 100.h,
                  child: SvgPicture.asset(
                    Theme.of(context).brightness == Brightness.light
                        ? 'assets/icons/logo.svg'
                        : 'assets/icons/logo_dark.svg',
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Address Setup'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                'Address Line 1',
                style: Theme.of(context).textTheme.headline6,
              ),
              const CustomTextFieldWidget(
                hintText: 'Address',
                isPasswordField: false,
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Address Line 2',
                style: Theme.of(context).textTheme.headline6,
              ),
              const CustomTextFieldWidget(
                hintText: 'Address',
                isPasswordField: false,
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Zip Code',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.2,
                        child: const CustomTextFieldWidget(
                          hintText: '+62 8777 2221',
                          isPasswordField: false,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'City',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.2,
                        child: const CustomTextFieldWidget(
                          hintText: '+62 8777 2221',
                          isPasswordField: false,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Phone Number',
                style: Theme.of(context).textTheme.headline6,
              ),
              const CustomTextFieldWidget(
                hintText: '+62 8777 2221',
                isPasswordField: false,
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Country',
                style: Theme.of(context).textTheme.headline6,
              ),
              const CustomTextFieldWidget(
                hintText: 'Pakistan',
                isPasswordField: false,
              ),
              SizedBox(
                height: 35.h,
              ),
              ButtonWidget(
                text: 'Add Address',
                onTap: () {},
              ),
              SizedBox(
                height: 12.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Skip for now',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
