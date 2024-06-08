import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hedg/core/ui/widgets/text_field/ui_phone_number_form_field.dart';

import '../../../../../core/ui/widgets/sized_box/gap_h10.dart';
import '../../../../../core/ui/widgets/text_field/ui_text_form_field.dart';
import '../../../../../core/utils/localization/strings_manager.dart';
import '../../../../../core/utils/theme/app_color.dart';
import '../../core/controller/auth_controller.dart';

class FormFieldsSignUpWidget extends ConsumerStatefulWidget {
  const FormFieldsSignUpWidget({
    super.key,
    required this.onEditingComplete,
  });
  final Function()? onEditingComplete;

  @override
  ConsumerState<FormFieldsSignUpWidget> createState() =>
      _FormFieldsSignUpWidgetState();
}

class _FormFieldsSignUpWidgetState
    extends ConsumerState<FormFieldsSignUpWidget> {
  @override
  Widget build(BuildContext context) {
    final isHide = ref.watch(isHidePasswordProvider);

    return Column(
      children: [
        UiTextFormField(
          hintText: C.FULL_NAME,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.name,
        ),
        const GapH10(),
        UiTextFormField(
          hintText: C.EMAIL,
          // todo: validate email
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
        ),
        const GapH10(),
        UiTextFormField(
          hintText: C.PASSWORD,
          textInputAction: TextInputAction.next,
          enableSuggestions: false,
          obscureText: isHide ? true : false,
          onFieldSubmitted: (v) {
            FocusScope.of(context).nextFocus();
          },
          suffixIcon: InkWell(
            onTap: () {
              ref.read(isHidePasswordProvider.notifier).state = !isHide;
            },
            child: Icon(
              isHide
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: AppColor.textFormField,
            ),
          ),
        ),
        const GapH10(),
        // phone number
        UiPhoneNumberFormField(
          onEditingComplete: widget.onEditingComplete,
        ),
      ],
    );
  }
}
