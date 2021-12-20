import 'package:flutter/material.dart';

/// 自定义card的style
///
/// 标准style使用方式
/// static ThemeData _baseBlueThemeData(BuildContext context) {
//    return ThemeData(
//      ...
//      cardTheme: AppCardTheme.grayCardTheme(context),
//    );
//  }
///
/// 特殊style使用方式
/// Theme(
///        data: Theme.of(context).copyWith(cardTheme: AppCardTheme.whiteCardTheme(context)),
///       child: ClassCardWidget()),
///       )
///
class AppCardTheme {
  static CardTheme whiteCardTheme(BuildContext context) {
    CardTheme defaultCardTheme = Theme.of(context).cardTheme;
    return defaultCardTheme.copyWith(
      color: Colors.white,
      shadowColor: Colors.white,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
    );
  }

  static CardTheme grayCardTheme(BuildContext context) {
    CardTheme defaultCardTheme = Theme.of(context).cardTheme;
    return defaultCardTheme.copyWith(
      color: Colors.grey[50],
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
      elevation: 0,
    );
  }

  static CardTheme reportCardTheme(BuildContext context) {
    CardTheme defaultCardTheme = Theme.of(context).cardTheme;
    return defaultCardTheme.copyWith(
      color: Color(0xFFF5F8FB),
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
      elevation: 0,
    );
  }
}
