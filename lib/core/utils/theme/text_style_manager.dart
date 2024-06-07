import 'package:flutter/material.dart';

import '../res/values_manager.dart';

// 100	Thin (Hairline)
// 200	Extra Light (Ultra Light)
// 300	Light
// 400	Normal (Regular)
// 500	Medium
// 600	Semi Bold (Demi Bold)
// 700	Bold
// 800	Extra Bold (Ultra Bold)
// 900	Black (Heavy)

// GoogleFonts.courgette(
//       textStyle:
//     ),

class TextStyleManager {
  TextStyleManager._();

  static TextTheme textTheme() => TextTheme(
        //* Display
        displayLarge: TextStyle(
          fontSize: AppSizes.TEXT_SIZE_57,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
        ),

        displayMedium: TextStyle(
          fontSize: AppSizes.TEXT_SIZE_45,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
        ),

        displaySmall: TextStyle(
          fontSize: AppSizes.TEXT_SIZE_36,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
        ),

        //* Headline
        headlineLarge: TextStyle(
          fontSize: AppSizes.TEXT_SIZE_32,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
        ),

        headlineMedium: TextStyle(
          fontSize: AppSizes.TEXT_SIZE_28,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
        ),

        headlineSmall: TextStyle(
          fontSize: AppSizes.TEXT_SIZE_24,
          fontFamily: "Poppins",
        ),

        //* Title
        titleLarge: TextStyle(
          // edit
          fontSize: AppSizes.TEXT_SIZE_20,
          fontFamily: "Poppins",
          fontWeight: FontWeight.bold,
        ),

        titleMedium: TextStyle(
          // edit
          fontSize: AppSizes.TEXT_SIZE_18,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500, // medium
        ),

        titleSmall: TextStyle(
          fontSize: AppSizes.TEXT_SIZE_14,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w900,
        ),

        //* Body
        bodyLarge: TextStyle(
          fontSize: AppSizes.TEXT_SIZE_16,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
        ),

        bodyMedium: TextStyle(
          // edit
          fontSize: AppSizes.TEXT_SIZE_14,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
        ),

        bodySmall: TextStyle(
          fontSize: AppSizes.TEXT_SIZE_12,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
        ),

        //* label
        labelLarge: TextStyle(
          // edited
          fontSize: AppSizes.TEXT_SIZE_14,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500, // medium
        ),

        labelMedium: TextStyle(
          // edited
          fontSize: AppSizes.TEXT_SIZE_12,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500, // medium
        ),

        labelSmall: TextStyle(
          fontSize: AppSizes.TEXT_SIZE_11,
          fontFamily: "Poppins",
          fontWeight: FontWeight.bold,
        ),
      );
}
