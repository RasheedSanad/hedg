import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg/core/router/app_router_constant.dart';
import 'package:hedg/core/ui/widgets/chips_buttons/ui_text_button.dart';
import 'package:hedg/core/ui/widgets/sized_box/gap_w6.dart';
import 'package:hedg/core/ui/widgets/text/ui_label_medium.dart';
import 'package:hedg/core/utils/theme/app_color.dart';
import 'package:hedg/features/auth/core/widgets/bottom_auth_card_widget.dart';
import 'package:hedg/features/auth/sign_up/widgets/form_fields_sign_up_widget.dart';

import '../../../../core/ui/widgets/sized_box/gap_h14.dart';
import '../../../../core/utils/localization/strings_manager.dart';
import '../../core/widgets/auth_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  _signUp(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return AuthWidget(
      title: C.CREATE_AN_ACCOUNT,
      cardWidget: Column(
        children: [
          // // * email & password
          // EmailAndPasswordWidget(
          //   onEditingComplete: () => _login(context),
          // ),
          FormFieldsSignUpWidget(
            onEditingComplete: () => _signUp(context),
          ),

          const GapH14(),
          BottomAuthCardWidget(
            loginOnTap: () => _signUp(context),
            textBtn: C.SIGN_UP,
          ),
          const GapH14(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const UiLabelMedium(C.HAVE_AN_ACCOUNT),
              const GapW6(),
              UiTextButton(
                text: C.LOG_IN,
                color: AppColor.secondary,
                style: Theme.of(context).textTheme.labelMedium,
                onTap: () => context.go(AppRouterConstant.LOGIN),
              ),
            ],
          ),
          //
        ],
      ),
    );
  }
}
