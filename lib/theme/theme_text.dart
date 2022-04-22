import 'package:flutter/material.dart';

/// 自定义text的style
///
/// 标准style使用方式
/// static ThemeData _baseBlueThemeData(BuildContext context) {
//    return ThemeData(
//      ...
//      textTheme: AppTextTheme.blueTextTheme(context),
//    );
//  }
///
/// 特殊style使用方式
/// Text(
///      S.of(context).action_user_logout,
///          style: AppTextTheme.redTextTheme(context).bodyText2,
///          ),
///2018规格有十三文本样式：
///NAME         SIZE  WEIGHT  SPACING
///headline1    96.0  light   -1.5
///headline2    60.0  light   -0.5
///headline3    48.0  regular  0.0
///headline4    34.0  regular  0.25
///headline5    24.0  regular  0.0
///headline6    20.0  medium   0.15
///subtitle1    16.0  regular  0.15
///subtitle2    14.0  medium   0.1
///bodyText1    16.0  regular  0.5
///bodyText2    14.0  regular  0.25
///button       14.0  medium   1.25    用于配置主题色按钮文本颜色的
///caption      12.0  regular  0.4
///overline     10.0  regular  1.5
///
///
///
class AppTextTheme {
  static TextTheme redTextTheme(BuildContext context) {
    TextTheme defaultTheme = Theme.of(context).textTheme;
    return defaultTheme.copyWith(
      bodyText2: defaultTheme.bodyText2!.copyWith(color: Colors.red),
      button: defaultTheme.button!.copyWith(color: Colors.white),
    );
  }

  static TextTheme multiBlackTextTheme(BuildContext context) {
    TextTheme defaultTheme = Theme.of(context).textTheme;
    return defaultTheme.copyWith(
      bodyText2: defaultTheme.bodyText2!.copyWith(color: Colors.black87),
      bodyText1: defaultTheme.bodyText1!.copyWith(color: Colors.black87),
      subtitle2: defaultTheme.subtitle2!.copyWith(color: Colors.black87),
      subtitle1: defaultTheme.subtitle1!.copyWith(color: Colors.black87),
      headline3: defaultTheme.headline4!.copyWith(color: Colors.blue),
      headline4: defaultTheme.headline4!.copyWith(color: Colors.black),
      headline5: defaultTheme.headline5!.copyWith(color: Colors.white),
      headline6: TextStyle(color: Color(0xFF222222), fontSize: 18),
      caption: defaultTheme.caption!.copyWith(color: Colors.grey[400]),
      overline: defaultTheme.overline!.copyWith(color: Colors.grey[700]),
      button: defaultTheme.button!.copyWith(color: Colors.white),
    );
  }

  static TextTheme blackGreyTextTheme(BuildContext context) {
    TextTheme defaultTheme = Theme.of(context).textTheme;
    return defaultTheme.copyWith(
      bodyText1: defaultTheme.bodyText1!.copyWith(color: Colors.black87),
      bodyText2: defaultTheme.bodyText2!.copyWith(color: Colors.black87),
      subtitle1: defaultTheme.subtitle1!.copyWith(color: Colors.black87),
      subtitle2: defaultTheme.subtitle2!.copyWith(color: Colors.black87),
      headline5: defaultTheme.headline5!.copyWith(color: Colors.black87),
      headline6: defaultTheme.headline6!.copyWith(color: Colors.black87),
      caption: defaultTheme.caption!.copyWith(color: Colors.grey[400]),
      button: defaultTheme.button!.copyWith(color: Colors.blue),
    );
  }

  static TextTheme pageBlackGreyTextTheme(BuildContext context) {
    TextTheme defaultTheme = Theme.of(context).textTheme;
    return defaultTheme.copyWith(
      bodyText1: defaultTheme.bodyText1!.copyWith(color: Colors.black87),
      bodyText2: defaultTheme.bodyText2!.copyWith(color: Colors.grey[400]),
      subtitle1: defaultTheme.subtitle1!.copyWith(color: Colors.black),
      subtitle2: defaultTheme.subtitle2!.copyWith(color: Colors.black87),
      headline5: defaultTheme.headline5!.copyWith(color: Colors.black87),
      headline6: defaultTheme.headline6!.copyWith(color: Colors.black87),
      caption: defaultTheme.caption!.copyWith(color: Colors.grey[400]),
      button: defaultTheme.button!.copyWith(color: Colors.black),
    );
  }

  static TextTheme grayTextTheme(BuildContext context) {
    TextTheme defaultTheme = Theme.of(context).textTheme;
    return defaultTheme.copyWith(
      bodyText2: defaultTheme.bodyText2!.copyWith(color: Colors.grey[500]),
      bodyText1: defaultTheme.bodyText1!.copyWith(color: Colors.grey[500]),
      subtitle2: defaultTheme.subtitle2!.copyWith(color: Colors.grey[500]),
      subtitle1: defaultTheme.subtitle1!.copyWith(color: Colors.grey[500]),
      headline5: defaultTheme.headline5!.copyWith(color: Colors.grey[500]),
      caption: defaultTheme.caption!.copyWith(color: Colors.grey[500]),
    );
  }

  static TextTheme whiteTextTheme(BuildContext context) {
    TextTheme defaultTheme = Theme.of(context).textTheme;
    return defaultTheme.copyWith(
      bodyText2: defaultTheme.bodyText2!.copyWith(color: Colors.white),
      bodyText1: defaultTheme.bodyText1!.copyWith(color: Colors.white),
      subtitle1: defaultTheme.subtitle1!.copyWith(color: Colors.white),
      subtitle2: defaultTheme.subtitle2!.copyWith(color: Colors.white),
      headline5: defaultTheme.headline5!.copyWith(color: Colors.white),
      headline6: defaultTheme.headline6!.copyWith(color: Colors.white),
      caption: defaultTheme.caption!.copyWith(color: Colors.white),
    );
  }

  static TextTheme blueTextTheme(BuildContext context) {
    TextTheme defaultTheme = Theme.of(context).textTheme;
    return defaultTheme.copyWith(
      bodyText2: defaultTheme.bodyText2!.copyWith(color: Colors.blue),
    );
  }

  static TextTheme reportTextTheme(BuildContext context) {
    TextTheme defaultTheme = Theme.of(context).textTheme;
    return defaultTheme.copyWith(
      bodyText2: defaultTheme.bodyText2!.copyWith(color: Colors.black87),
      bodyText1: defaultTheme.bodyText1!.copyWith(color: Colors.black87),
      subtitle2: defaultTheme.subtitle2!.copyWith(color: Colors.black87),
      subtitle1: defaultTheme.subtitle1!.copyWith(color: Colors.black87),
      headline4: defaultTheme.headline4!.copyWith(color: Colors.black),
      //得分
      headline5: defaultTheme.headline5!.copyWith(color: Colors.black, fontWeight: FontWeight.w800, fontSize: 24),
      //item title text
      headline6: defaultTheme.headline5!.copyWith(color: Colors.black, fontWeight: FontWeight.w800, fontSize: 18),
      caption: defaultTheme.caption!.copyWith(color: Colors.grey[400]),
      overline: defaultTheme.overline!.copyWith(color: Colors.grey[700]),
      button: defaultTheme.button!.copyWith(color: Colors.white),
    );
  }
}
