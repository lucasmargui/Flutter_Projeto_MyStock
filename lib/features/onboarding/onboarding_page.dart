// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../common/constants/constants.dart';
import '../../common/widgets/widgets.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Column(
        children: [
          Expanded(
            child: Image.asset('assets/images/onboarding_image.png'),
          ),
          Text('Spend Smarter',
              textAlign: TextAlign.center,
              style: AppTextStyles.mediumText
                  .copyWith(color: AppColors.bluedarkOne)),
          Text('Save More',
              textAlign: TextAlign.center,
              style: AppTextStyles.mediumText
                  .copyWith(color: AppColors.bluedarkOne)),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 16,
            ),
            child: PrimaryButton(
              text: 'Get Started',
              onPressed: () {
                Navigator.pushNamed(context, NamedRoute.signIn);
              },
            ),
          ),
          SizedBox(
            height: 16,
          ),
          MultiTextButton(
            onPressed: () => Navigator.pushNamed(context, NamedRoute.signIn),
            children: [
              Text('Already have account?',
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.grey,
                  )),
              Text('Log In',
                  style: AppTextStyles.smallText
                      .copyWith(color: AppColors.bluedarkThree)),
            ],
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
