import 'package:flutter/material.dart';

/// 自定义text的style
///
/// 标准style使用方式
/// static ThemeData _baseBlueThemeData(BuildContext context) {
//    return ThemeData(
//      ...
//      buttonTheme: AppButtonTheme.blueButtonTheme(context),
//    );
//  }
///

class AppButtonTheme {
  ///蓝色按钮 提供蓝色底色 20圆角的button
  ///背景色为  blue
  ///禁用态背景颜色为    grey
  ///圆角弧度20
  ///高度30
  ///最小宽度30
  ///buttonColor 只会作用与[RaisedButton] 如果使用[FlatButton] 则使用 color配置填充色
  ///
  static ButtonThemeData blueButtonTheme(BuildContext context) {
    ButtonThemeData defaultTheme = Theme.of(context).buttonTheme;
    return defaultTheme.copyWith(
      height: 30,
      minWidth: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      disabledColor: Colors.grey,
      buttonColor: Colors.blue,
    );
  }

  ///白色按钮 提供白色底色 20圆角的button
  static ButtonThemeData whiteButtonTheme(BuildContext context) {
    ButtonThemeData defaultTheme = Theme.of(context).buttonTheme;
    return defaultTheme.copyWith(
      height: 30,
      minWidth: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      disabledColor: Colors.grey,
      buttonColor: Colors.white,
    );
  }

  static ButtonThemeData grayButtonTheme(BuildContext context) {
    ButtonThemeData defaultTheme = Theme.of(context).buttonTheme;
    return defaultTheme.copyWith(
      height: 30,
      minWidth: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      disabledColor: Colors.grey,
      buttonColor: Color(0xFFDEECF2),
    );
  }
}
