import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hedg/core/ui/widgets/chips_buttons/ui_text_button.dart';
import 'package:hedg/core/ui/widgets/sized_box/gap_h14.dart';
import 'package:hedg/core/ui/widgets/sized_box/gap_w6.dart';
import 'package:hedg/core/ui/widgets/text/ui_label_medium.dart';
import 'package:hedg/core/utils/localization/strings_manager.dart';
import 'package:hedg/features/auth/core/widgets/auth_widget.dart';
import 'package:hedg/features/auth/core/widgets/bottom_auth_card_widget.dart';
import 'package:hedg/features/auth/login/presentation/widgets/email_and_password_widget.dart';

import '../../../../../core/utils/theme/app_color.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  _login(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return AuthWidget(
      title: C.LOGIN_IN_YOUR_ACCOUNT,
      cardWidget: Column(
        children: [
          // * email & password
          EmailAndPasswordWidget(
            onEditingComplete: () => _login(context),
          ),

          const GapH14(),
          UiLabelMedium(
            C.FORGOT_YOUR_PASSWORD,
            color: AppColor.primary,
          ),
          const GapH14(),
          BottomAuthCardWidget(
            loginOnTap: () => _login(context),
          ),
          const GapH14(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiLabelMedium(C.DONT_HAVE_AN_ACCOUNT),
              const GapW6(),
              UiTextButton(
                text: C.SIGN_UP,
                color: AppColor.secondary,
                style: Theme.of(context).textTheme.labelMedium,
                onTap: () {
                  // TODO: Navgation to sign up page
                },
              ),
            ],
          ),
          //
        ],
      ),
    );
  }
}
