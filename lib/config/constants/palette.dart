import 'package:flutter/material.dart';

abstract class AppPalette {
  const AppPalette._();

  /// Local Colors
  static const whiteColor = Colors.white;
  static const whiteColor54 = Colors.white54;
  static const transparentColor = Colors.transparent;

  /// External Colors
  static const mainBlackColor = Color.fromRGBO(38, 53, 77, 1);
  static const mainHeadlineColor = Color.fromRGBO(6, 29, 75, 1);
  static const mainPurpleColor = Color.fromRGBO(183, 125, 228, 1);
  static const mainBlueColor = Color.fromRGBO(148, 179, 253, 1);
  static const openGreyColor = Color.fromRGBO(231, 231, 233, 1);
  static const grayWhiteColor = Color.fromRGBO(234, 238, 251, 1);
  static const secondaryBlackColor = Color.fromRGBO(120, 151, 171, 1);
  static const openGreenColor = Color.fromRGBO(110, 201, 183, 1);
  static const secondaryGreyColor = Color.fromRGBO(215, 213, 217, 1);
  static const mainGreyColor = Color.fromRGBO(245, 245, 245, 1);
  static const thirdGreyColor = Color.fromRGBO(162, 162, 162, 1);
  static const grey = Color.fromRGBO(242, 244, 245, 1);

  /// Gradients
  static const habitDetailsProgressLinearGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.topRight,
    colors: [
      Color.fromRGBO(119, 161, 211, 1),
      Color.fromRGBO(121, 203, 202, 1),
      Color.fromRGBO(230, 132, 174, 1),
    ],
  );

  static const homeProgressLinearGradientColor = LinearGradient(
    colors: [AppPalette.grayWhiteColor, AppPalette.mainPurpleColor],
  );
}
