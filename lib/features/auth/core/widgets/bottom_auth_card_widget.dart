import 'package:flutter/material.dart';

import '../../../../core/ui/widgets/chips_buttons/ui_button.dart';
import '../../../../core/ui/widgets/chips_buttons/ui_chip_icon.dart';
import '../../../../core/ui/widgets/chips_buttons/ui_text_button.dart';
import '../../../../core/ui/widgets/images/ui_image_asset.dart';
import '../../../../core/ui/widgets/sized_box/gap_h14.dart';
import '../../../../core/ui/widgets/sized_box/gap_w6.dart';
import '../../../../core/ui/widgets/text/ui_label_medium.dart';
import '../../../../core/utils/localization/strings_manager.dart';
import '../../../../core/utils/res/app_image_pqth.dart';
import '../../../../core/utils/res/values_manager.dart';
import '../../../../core/utils/theme/app_color.dart';

class BottomAuthCardWidget extends StatelessWidget {
  const BottomAuthCardWidget({
    super.key,
    required this.loginOnTap,
  });
  final Function()? loginOnTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UiButton(
          text: C.LOG_IN,
          onPressed: loginOnTap,
          isMaxWidth: true,
        ),
        const GapH14(),
        const UiLabelMedium(C.OR),
        const GapH14(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiChipIcon(
              backgroundColor: AppColor.squareBtn,
              icon: Padding(
                padding: EdgeInsets.all(AppSizes.PADDING_8),
                child: UiImageAsset(
                  AppImagePath.GOOGLE,
                ),
              ),
            ),
            const GapW6(),
            UiChipIcon(
              backgroundColor: AppColor.squareBtn,
              icon: Padding(
                padding: EdgeInsets.all(AppSizes.PADDING_8),
                child: UiImageAsset(
                  AppImagePath.APPLE,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
