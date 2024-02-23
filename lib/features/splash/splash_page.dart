// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mystock_app/common/constants/app_colors.dart';
import 'package:mystock_app/common/constants/app_text_style.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              stops: [
                0.1,
                0.9,
              ],
              colors: AppColors.blueDarkGradient)),
      child: Text(
        'MyStock',
        //CopyWith copia a Classe de estilização em AppTextStyles e depois adiciona o color com a propriedade AppColors.white
        style: AppTextStyles.bigText.copyWith(color: AppColors.white),
      ),
    ));
  }
}