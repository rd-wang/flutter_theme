import 'package:flutter/material.dart';

/// 自定义icon的style
///
/// 标准style使用方式
/// static ThemeData _baseBlueThemeData(BuildContext context) {
//    return ThemeData(
//      ...
//      iconTheme: AppIconTheme.blueIconTheme(context),
//    );
//  }
///
/// 特殊style使用方式
/// Theme(
///      data: Theme.of(context).copyWith(iconTheme: AppIconTheme.greyIconTheme(context)),
///      child: Icon(Icons.chevron_right),
///      )
///
class AppIconTheme {
  static IconThemeData greyIconTheme(BuildContext context) {
    IconThemeData defaultIconTheme = Theme.of(context).iconTheme;
    return defaultIconTheme.copyWith(color: Colors.grey);
  }

  static IconThemeData whiteIconTheme(BuildContext context) {
    IconThemeData defaultIconTheme = Theme.of(context).iconTheme;
    return defaultIconTheme.copyWith(color: Colors.white);
  }

  static IconThemeData blueIconTheme(BuildContext context) {
    IconThemeData defaultIconTheme = Theme.of(context).iconTheme;
    return defaultIconTheme.copyWith(color: Colors.blue);
  }

  static IconThemeData blackIconTheme(BuildContext context) {
    IconThemeData defaultIconTheme = Theme.of(context).iconTheme;
    return defaultIconTheme.copyWith(color: Colors.black);
  }
}
