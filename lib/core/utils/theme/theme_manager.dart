import 'package:flutter/material.dart';

import 'text_style_manager.dart';

class ThemeManager {
  ThemeManager._(); // Private constructor to prevent instantiation

  static ThemeData theme( ) => ThemeData(
        fontFamily: 'Poppins',
        textTheme: TextStyleManager.textTheme(),
      );
}
