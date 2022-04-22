import 'package:flutter/material.dart';
import 'package:roobo_theme/theme/theme_appbar.dart';
import 'package:roobo_theme/theme/theme_button.dart';
import 'package:roobo_theme/theme/theme_card.dart';
import 'package:roobo_theme/theme/theme_chip.dart';
import 'package:roobo_theme/theme/theme_icon.dart';
import 'package:roobo_theme/theme/theme_text.dart';

///
/// 为保证app内部widget的颜色统一性 需在此文件配置app色系
/// ThemeData（）中属性的值都配置在common/theme目录下
/// 和属性名同名的dart文件中。
///
/// **重要————在app内部使用时需要遵循自定义style的使用形式，
/// Theme(
///      data: Theme.of(context).copyWith(iconTheme: AppIconTheme.greyIconTheme()),
///      child: Icon(Icons.chevron_right),
///      )
/// 不要设置color之类的属性
///      child: Icon(Icons.chevron_right,color:Colors.grey),
///
/// 验证页面是否符合主题变换要求  在 @override  Widget build(BuildContext context) {
/// 返回的widget中包裹如下布局
/// 更换主题配置即可查看效果
///
class ThemeConfig {
  static List<ThemeData>? _appTheme;

  ///appbar 右上角的文字颜色 appbartheme 无法控制 使用以下方式获取
  static late List<Color> _appBarRightButtonTextColors;

  ///主题色按钮 中文字的style设置 包含 颜色和大小
  static late List<TextStyle> _primaryButtonTextStyle;

  ///当前主题色，用于主题切换
  static ThemeData? currentThemeData;

  ///主题配色集合
  static List<ThemeData>? get themeList => _appTheme;

  static void init(BuildContext context) {
    _appTheme = [
      _greySecondaryPageTheme(context),
      _whiteSecondaryPageTheme(context),
    ];

    _appBarRightButtonTextColors = [
      Color(0xFF222222),
    ];

    _primaryButtonTextStyle = [
      TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
    ];

    currentThemeData = _appTheme![0];
  }

  ///二级页面通用主题，灰色背景#F5F6FA
  static ThemeData _greySecondaryPageTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      textTheme: AppTextTheme.multiBlackTextTheme(context),
      appBarTheme: AppAppBarTheme.whiteAppBarTheme(context),
      primaryColor: Color(0xFF1AD078),
      accentColor: Color(0xFF1AD078),
      cardTheme: AppCardTheme.whiteCardTheme(context),
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Color(0xFFF5F6FA),
      iconTheme: AppIconTheme.blueIconTheme(context),
      chipTheme: AppChipTheme.blueChipTheme(context),
      buttonTheme: AppButtonTheme.blueButtonTheme(context),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  }

  ///二级页面通用主题，白色背景#FFFFFF
  static ThemeData _whiteSecondaryPageTheme(BuildContext context) {
    return _greySecondaryPageTheme(context).copyWith(
      scaffoldBackgroundColor: Colors.white,
    );
  }

  /// appbar右上角的文字颜色
  static Color getCurrentAppBarRightButtonTextColor(BuildContext context) {
    return _appBarRightButtonTextColors[0];
  }

  /// 主题色通用按钮样式
  static TextStyle getCurrentPrimaryButtonTextStyle(BuildContext context) {
    return _primaryButtonTextStyle[0];
  }
}
