import 'package:flutter/material.dart';
import 'package:roobo_theme/theme/theme_text.dart';

import 'theme_icon.dart';

class AppAppBarTheme {
  ///背景蓝色appbar
  ///字体白色
  ///按钮白色
  ///阴影0
  ///标题居中
  static blueAppBarTheme(BuildContext context) {
    ThemeData current = Theme.of(context);
    return current.appBarTheme.copyWith(
      textTheme: AppTextTheme.whiteTextTheme(context),
      centerTitle: true,
      elevation: 0,
      iconTheme: AppIconTheme.whiteIconTheme(context),
      actionsIconTheme: AppIconTheme.whiteIconTheme(context),
      backgroundColor: Colors.transparent,
    );
  }

  ///背景白色appbar
  ///字体黑色
  ///按钮黑色
  ///阴影0
  ///标题居中
  static whiteAppBarTheme(BuildContext context) {
    ThemeData current = Theme.of(context);
    return current.appBarTheme.copyWith(
      textTheme: AppTextTheme.multiBlackTextTheme(context),
      centerTitle: true,
      elevation: 0,
      iconTheme: AppIconTheme.blackIconTheme(context),
      actionsIconTheme: AppIconTheme.blackIconTheme(context),
      color: Colors.white
    );
  }

  static transparentAppBarTheme(BuildContext context) {
    ThemeData current = Theme.of(context);
    return current.appBarTheme.copyWith(
      color: Colors.transparent,
      textTheme: AppTextTheme.multiBlackTextTheme(context),
      centerTitle: true,
      elevation: 0,
      iconTheme: AppIconTheme.blueIconTheme(context),
      actionsIconTheme: AppIconTheme.blueIconTheme(context),
    );
  }
}
