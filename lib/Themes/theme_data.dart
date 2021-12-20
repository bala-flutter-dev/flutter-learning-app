import 'package:flutter/material.dart';
import 'package:flutter_learning_app/styles/colors.dart';
import 'package:flutter_learning_app/styles/dimens.dart';
import 'package:flutter_learning_app/styles/text_styles.dart';

class AppTheme {
  static ThemeData get theme {
    final themeData = ThemeData.light();
    final textTheme = themeData.textTheme;
    final body1 = textTheme.bodyText2!.copyWith(
      color: AppColors.textColor1,
      fontSize: 12.0,
      fontFamily: 'Kanit',
    );

    return ThemeData(
      fontFamily: 'Kanit',
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      accentColor: AppColors.accent,
      buttonColor: AppColors.accent,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.accent,
        height: Dimens.buttonHeight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            Dimens.buttonCornerRadius,
          ),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        elevation: 4,
        backgroundColor: Colors.white,
      ),
      primaryTextTheme: textTheme.copyWith(
        bodyText2: body1,
      ),
      textTheme: TextTheme(
        subtitle1: AppTextStyle.regularStyle(),
      ),
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        prefixStyle: AppTextStyle.regularStyle(),
        hintStyle: AppTextStyle.regularStyle(color: Colors.grey),
        labelStyle: const TextStyle(
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.grey[300]!,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
