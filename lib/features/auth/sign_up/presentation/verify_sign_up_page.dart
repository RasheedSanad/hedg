import 'package:flutter/material.dart';

import '../../../../core/ui/widgets/chips_buttons/ui_button.dart';
import '../../../../core/ui/widgets/chips_buttons/ui_text_button.dart';
import '../../../../core/ui/widgets/sized_box/gap_h14.dart';
import '../../../../core/utils/localization/strings_manager.dart';
import '../../../../core/utils/theme/app_color.dart';
import '../../core/widgets/verify_auth_widget.dart';
import '../widgets/verify_pin_code_widget.dart';

class VerifySignUpPage extends StatelessWidget {
  const VerifySignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return VerifyAuthWidget(
      title: C.VERIFICATION,
      subTitle: C.ENTER_4_DIGIT_NUMBERS_THAT_SENT_TO + " +01205689412",
      bottomWidget: UiTextButton(
        text: C.RESEND_CODE,
        color: AppColor.secondary,
        style: Theme.of(context).textTheme.labelLarge,
        onTap: () {
          // TODO: resend code onTap
        },
      ),
      cardWidget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // pin code
          VerifyPinCodeWidget(
            onCompleted: (value) {
              // TODO: onCompleted onTap
            },
          ),
          const GapH14(),
          // btn
          UiButton(
            text: C.CONTINUE,
            isMaxWidth: true,
            onPressed: () {
              // TODO: continue onTap
            },
          ),
        ],
      ),
    );
  }
}
