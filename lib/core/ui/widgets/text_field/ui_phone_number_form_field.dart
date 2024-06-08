import 'package:flutter/material.dart';

import '../../../utils/helper/text_input_formatter_helper.dart';
import '../../../utils/localization/strings_manager.dart';
import '../../../utils/res/values_manager.dart';
import '../../../utils/theme/app_color.dart';
import '../sized_box/gap_w4.dart';
import '../text/ui_label_large.dart';
import 'ui_text_form_field.dart';

class UiPhoneNumberFormField extends StatelessWidget {
  final Function()? onEditingComplete;
  const UiPhoneNumberFormField({
    super.key,
    this.onEditingComplete,
  });
  // TODO: complete
  String generateCountryFlag() {
    String countryCode = 'eg';

    String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
        (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));

    return flag;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // flat
        Expanded(
          flex: 1,
          child: Container(
            constraints: BoxConstraints(maxHeight: AppSizes.HEIGHT_44),
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.PADDING_14,
              // vertical: AppSizes.PADDING_18,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.outline),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: FittedBox(
                child: Row(
                  children: [
                    FittedBox(
                      child: UiLabelLarge(generateCountryFlag()),
                    ),
                    const GapW4(),
                    //
                    const FittedBox(
                      child: UiLabelLarge(
                        ' +20',
                        // fontSize: MediaQuery.of(context).size.width * 0.023,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // number
        Expanded(
          flex: 2,
          child: UiTextFormField(
            hintText: C.PHONE_NUMBER,
            // autofocus: true,
            // onFieldSubmitted: (v) {
            //   FocusScope.of(context).nextFocus();
            // },
            // focusNode: focus,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
              borderSide: BorderSide(color: AppColor.outline, width: 1),
            ),
            onEditingComplete: onEditingComplete,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.phone,
            inputFormatters: TextInputFormatterHelper.number,
          ),
        ),
      ],
    );
  }
}
