import 'package:flutter/widgets.dart';

class ResponsiveHelper {
  static bool showTwoColumnsLayout(BuildContext context) {
    return 800 < MediaQuery.of(context).size.width;
  }
}
