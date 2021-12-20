# roobo_theme

roobo 预置UI Theme

## Getting Started

```text
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
```