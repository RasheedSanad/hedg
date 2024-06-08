import 'package:flutter/material.dart';
import 'package:hedg/core/ui/widgets/chips_buttons/ui_button.dart';
import 'package:hedg/core/ui/widgets/sized_box/gap_h14.dart';
import 'package:hedg/core/ui/widgets/text_field/ui_phone_number_form_field.dart';
import 'package:hedg/features/auth/core/widgets/verify_auth_widget.dart';

import '../../../../../core/ui/widgets/chips_buttons/ui_text_button.dart';
import '../../../../../core/utils/localization/strings_manager.dart';
import '../../../../../core/utils/theme/app_color.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return VerifyAuthWidget(
      title: C.FORGOT_PASSWORD,
      subTitle: C.ENTER_YOUR_PHONE_NUMBER_TO_RESET_YOUR_PASSWORD,
      bottomWidget: UiTextButton(
        // TODO: Get time of resend code from api
        text: C.RESEND_CODE_IN + " 0:30",
        color: AppColor.secondary,
        style: Theme.of(context).textTheme.labelLarge,
        onTap: () {
          // TODO: resend code onTap
        },
      ),
      cardWidget: Column(
        children: [
          UiPhoneNumberFormField(),
          const GapH14(),
          UiButton(
            text: C.SEND,
            onPressed: () {
              // TODO: send onTap
            },
            isMaxWidth: true,
          )
        ],
      ),
    );
  }
}
