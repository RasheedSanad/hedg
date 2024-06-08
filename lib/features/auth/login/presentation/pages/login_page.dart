import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg/core/router/app_router_constant.dart';
import 'package:hedg/core/ui/widgets/chips_buttons/ui_text_button.dart';
import 'package:hedg/core/ui/widgets/sized_box/gap_h14.dart';
import 'package:hedg/core/ui/widgets/sized_box/gap_w6.dart';
import 'package:hedg/core/utils/localization/strings_manager.dart';
import 'package:hedg/features/auth/core/widgets/auth_widget.dart';
import 'package:hedg/features/auth/core/widgets/bottom_auth_card_widget.dart';
import 'package:hedg/features/auth/login/presentation/widgets/email_and_password_widget.dart';

import '../../../../../core/ui/widgets/text/ui_label_large.dart';
import '../../../../../core/utils/theme/app_color.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  _login(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return AuthWidget(
      title: C.LOGIN_IN_YOUR_ACCOUNT,
      cardWidget: Column(
        children: [
          // * email & password
          EmailAndPasswordWidget(
            onEditingComplete: () => _login(context),
          ),

          const GapH14(),
          FittedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.25),
              child: UiTextButton(
                text: C.FORGOT_YOUR_PASSWORD,
                color: AppColor.primary,
                style: textTheme.labelLarge,
                onTap: () => context.push(AppRouterConstant.FORGOT_PASSWORD),
              ),
            ),
          ),
          const GapH14(),
          BottomAuthCardWidget(
            loginOnTap: () => _login(context),
            textBtn: C.LOG_IN,
          ),
          const GapH14(),
          FittedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const UiLabelLarge(
                    C.DONT_HAVE_AN_ACCOUNT,
                    // fontSize: 16.dm,
                  ),
                  const GapW6(),
                  UiTextButton(
                    text: C.SIGN_UP,
                    color: AppColor.secondary,
                    style: textTheme.labelLarge,
                    onTap: () => context.go(AppRouterConstant.SIGN_UP),
                    // fontSize: 16.dm,
                  ),
                ],
              ),
            ),
          ),
          //
        ],
      ),
    );
  }
}
