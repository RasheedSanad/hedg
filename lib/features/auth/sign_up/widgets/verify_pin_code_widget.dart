import 'package:flutter/material.dart';
import 'package:hedg/core/utils/helper/update_text_style.dart';
import 'package:hedg/core/utils/theme/app_color.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyPinCodeWidget extends StatelessWidget {
  const VerifyPinCodeWidget({
    super.key,
    required this.onCompleted,
  });
  final Function(String)? onCompleted;
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      backgroundColor: AppColor.onPrimary,
      cursorColor: AppColor.primary,
      keyboardType: TextInputType.number,
      pinTheme: PinTheme(
        inactiveColor: AppColor.inActiveColor,
        activeColor: AppColor.primary,
        selectedColor: AppColor.primary,
      ),
      onCompleted: onCompleted,
      textStyle: UpdateTextStyle(
        previousTextStyle: Theme.of(context).textTheme.titleLarge,
        color: AppColor.primary,
      ),
    );
  }
}
