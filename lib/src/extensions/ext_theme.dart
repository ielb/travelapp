import 'package:chaty/src/extensions/extensions.dart';

extension ThemeBuildContext on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorSheme => Theme.of(this).colorScheme;
}
