import 'package:flutter/material.dart';

import 'theme_text.dart';

/// 自定义icon的style
///
/// 标准style使用方式
/// static ThemeData _baseBlueThemeData(BuildContext context) {
//    return ThemeData(
//      ...
//      chipTheme: AppChipTheme.redChipTheme(context),
//    );
//  }
///
/// 特殊style使用方式
///ChipTheme(
///      data: ChipTheme.of(context).copyWith(backgroundColor: Colors.lightBlue),
///      child: ChoiceChip(
///        label: Text('Light Blue'),
///        onSelected: (bool value) {
///          setState(() {
///            _color = value ? Colors.lightBlue : Colors.red;
///          });
///        },
///        selected: _color == Colors.lightBlue,
///      ),
///    );
///
class AppChipTheme {
  static ChipThemeData redChipTheme(BuildContext context) {
    ChipThemeData defaultIconTheme = Theme.of(context).chipTheme;
    return defaultIconTheme.copyWith(
      padding: EdgeInsets.all(0),
      backgroundColor: Colors.red,
      shape: StadiumBorder(
        side: BorderSide(color: Colors.red),
      ),
      labelStyle: AppTextTheme.whiteTextTheme(context).caption,
    );
  }

  static ChipThemeData blueChipTheme(BuildContext context) {
    ChipThemeData defaultIconTheme = Theme.of(context).chipTheme;
    return defaultIconTheme.copyWith(
      padding: EdgeInsets.all(0),
      backgroundColor: Colors.blue,
      shape: StadiumBorder(
        side: BorderSide(color: Colors.blue),
      ),
      labelStyle: AppTextTheme.whiteTextTheme(context).caption,
    );
  }
}
