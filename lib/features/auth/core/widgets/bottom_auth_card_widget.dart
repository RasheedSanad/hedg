import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hedg/core/ui/widgets/sized_box/gap_w20.dart';
import 'package:hedg/core/ui/widgets/text/ui_label_medium.dart';

import '../../../../core/ui/widgets/chips_buttons/ui_button.dart';
import '../../../../core/ui/widgets/chips_buttons/ui_chip_icon.dart';
import '../../../../core/ui/widgets/images/ui_image_asset.dart';
import '../../../../core/ui/widgets/sized_box/gap_h14.dart';
import '../../../../core/utils/localization/strings_manager.dart';
import '../../../../core/utils/res/app_image_pqth.dart';
import '../../../../core/utils/res/values_manager.dart';
import '../../../../core/utils/theme/app_color.dart';

class BottomAuthCardWidget extends StatelessWidget {
  const BottomAuthCardWidget({
    super.key,
    required this.loginOnTap,
    required this.textBtn,
  });
  final Function()? loginOnTap;

  final String textBtn;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UiButton(
          text: textBtn,
          onPressed: loginOnTap,
          isMaxWidth: true,
        ),
        const GapH14(),
        UiLabelMedium(
          C.OR,
          // fontSize: MediaQuery.of(context).size.width * 0.023,
        ),
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
            const GapW20(),
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
