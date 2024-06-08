import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/ui/widgets/sized_box/gap_h10.dart';
import '../../../../../core/ui/widgets/text_field/ui_text_form_field.dart';
import '../../../../../core/utils/localization/strings_manager.dart';
import '../../../../../core/utils/theme/app_color.dart';
import '../../../core/controller/auth_controller.dart';

class EmailAndPasswordWidget extends ConsumerStatefulWidget {
  const EmailAndPasswordWidget({
    super.key,
    required this.onEditingComplete,
  });
  final Function()? onEditingComplete;

  @override
  ConsumerState<EmailAndPasswordWidget> createState() =>
      _EmailAndPasswordWidgetState();
}

class _EmailAndPasswordWidgetState
    extends ConsumerState<EmailAndPasswordWidget> {
  late final FocusNode focus;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
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

  @override
  void initState() {
    focus = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    focus.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isHide = ref.watch(isHidePasswordProvider);

    return Column(
      children: [
        UiTextFormField(
          hintText: C.EMAIL,
          // autofocus: true,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          // focusNode: focus,

          // errorText: _emailErrorText,
          validator: (value) => _emailErrorText,
          onChanged: _validateEmail,
        ),
        const GapH10(),
        UiTextFormField(
          hintText: C.PASSWORD,
          onFieldSubmitted: (v) {
            FocusScope.of(context).nextFocus();
          },
          textInputAction: TextInputAction.done,
          // autofocus: true,
          // textInputType: TextInputType.none,
          obscureText: isHide ? true : false,
          enableSuggestions: false,
          onEditingComplete: widget.onEditingComplete,

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
      ],
    );
  }
}
