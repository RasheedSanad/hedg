import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hedg/core/ui/widgets/text/ui_label_large.dart';
import 'package:hedg/core/ui/widgets/text/ui_label_medium.dart';
import 'package:hedg/core/utils/helper/text_input_formatter_helper.dart';
import 'package:hedg/core/utils/res/values_manager.dart';

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
  String? _emailErrorText;

  void _validateEmail(String value) {
    if (value.isEmpty) {
      setState(() {
        _emailErrorText = C.EMAIL_IS_REQUIRED;
      });
    } else if (!isEmailValid(value)) {
      setState(() {
        _emailErrorText = C.ENTER_A_VALID_EMAIL_ADDRESS;
      });
    } else {
      setState(() {
        _emailErrorText = null;
      });
    }
  }

  bool isEmailValid(String email) {
    // Basic email validation using regex
    // You can implement more complex validation if needed
    return RegExp(r'^[\w-\.]+@[a-zA-Z]+\.[a-zA-Z]{2,}$').hasMatch(email);
  }

  String generateCountryFlag() {
    String countryCode = 'eg';

    String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
        (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));

    return flag;
  }

  @override
  Widget build(BuildContext context) {
    final isHide = ref.watch(isHidePasswordProvider);

    return Column(
      children: [
        UiTextFormField(
          hintText: C.FULL_NAME,
          // autofocus: true,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.name,
          // focusNode: focus,
          // onFieldSubmitted: (v) {
          //   FocusScope.of(context).nextFocus();
          // },
        ),
        const GapH10(),
        UiTextFormField(
          hintText: C.EMAIL,
          // autofocus: true,
          onFieldSubmitted: (v) {
            FocusScope.of(context).nextFocus();
          },
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,

          // errorText: _emailErrorText,
          validator: (value) => _emailErrorText,
          onChanged: _validateEmail,
        ),
        const GapH10(),
        UiTextFormField(
          hintText: C.PASSWORD,
          textInputAction: TextInputAction.next,
          // autofocus: true,
          // textInputType: TextInputType.none,
          enableSuggestions: false,
          obscureText: isHide ? true : false,
          onFieldSubmitted: (v) {
            FocusScope.of(context).nextFocus();
          },
          // enableSuggestions: false,

          // focusNode: focus,
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
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                constraints: BoxConstraints(maxHeight: AppSizes.HEIGHT_44),
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.PADDING_12,
                  // vertical: AppSizes.PADDING_18,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.outline),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(4),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: UiLabelLarge(
                    generateCountryFlag() + ' +20',
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: UiTextFormField(
                hintText: C.PHONE_NUMBER,
                // autofocus: true,
                onFieldSubmitted: (v) {
                  FocusScope.of(context).nextFocus();
                },
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                  borderSide: BorderSide(color: AppColor.outline, width: 1),
                ),
                onEditingComplete: widget.onEditingComplete,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.phone,
                inputFormatters: TextInputFormatterHelper.number,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
