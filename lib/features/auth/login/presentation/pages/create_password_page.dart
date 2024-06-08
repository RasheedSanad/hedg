import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/ui/widgets/chips_buttons/ui_button.dart';
import '../../../../../core/ui/widgets/sized_box/gap_h10.dart';
import '../../../../../core/ui/widgets/sized_box/gap_h14.dart';
import '../../../../../core/ui/widgets/text_field/ui_text_form_field.dart';
import '../../../../../core/utils/localization/strings_manager.dart';
import '../../../../../core/utils/theme/app_color.dart';
import '../../../core/controller/auth_controller.dart';
import '../../../core/widgets/verify_auth_widget.dart';

class CreatePasswordPage extends ConsumerWidget {
  const CreatePasswordPage({super.key});

  _confirm(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isHide1 = ref.watch(isHidePasswordProvider);
    final isHide2 = ref.watch(isHidePasswordProvider2);

    return VerifyAuthWidget(
      title: C.CREATE_NEW_PASSWORD,
      subTitle:
          C.YOUR_NEW_PASSWORD_MUST_BE_DIFFERENT_FROM_PREVIOUSLY_USED_PASSWORDS,
      cardWidget: Column(
        children: [
          const GapH10(),
          UiTextFormField(
            hintText: C.NEW_PASSWORD,
            textInputAction: TextInputAction.next,
            obscureText: isHide1 ? true : false,
            enableSuggestions: false,
            onFieldSubmitted: (v) {
              FocusScope.of(context).nextFocus();
            },
            suffixIcon: InkWell(
              onTap: () {
                ref.read(isHidePasswordProvider.notifier).state = !isHide1;
              },
              child: Icon(
                isHide1
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: AppColor.textFormField,
              ),
            ),
          ),
          const GapH10(),
          UiTextFormField(
            hintText: C.REPASSWORD,
            textInputAction: TextInputAction.done,
            obscureText: isHide2 ? true : false,
            enableSuggestions: false,
            onEditingComplete: () => _confirm(context),
            suffixIcon: InkWell(
              onTap: () {
                ref.read(isHidePasswordProvider2.notifier).state = !isHide2;
              },
              child: Icon(
                isHide2
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: AppColor.textFormField,
              ),
            ),
          ),
          const GapH14(),
          UiButton(
            text: C.CONFIRM,
            onPressed: () => _confirm(context),
            isMaxWidth: true,
          )
        ],
      ),
    );
  }
}
