import 'package:flutter/material.dart';

import '../../weidget/app/app_colors.dart';

class Utils{


  static ThemeData get appTheme{
    return ThemeData(
      fontFamily: 'Nunito',
      appBarTheme: AppBarTheme(
        color: AppColors.black,
        elevation: 0,
      ),
      canvasColor: AppColors.black,
      iconTheme: IconThemeData(
        color: AppColors.white
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.darkGray
      ),
    );
  }

}