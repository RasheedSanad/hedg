// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../core/ui/pages/ui_scaffold.dart';
import '../../../../core/ui/widgets/app_bar/ui_app_bar_back.dart';
import '../../../../core/ui/widgets/cards/ui_card.dart';
import '../../../../core/ui/widgets/images/ui_image_asset.dart';
import '../../../../core/ui/widgets/sized_box/gap_h14.dart';
import '../../../../core/ui/widgets/sized_box/gap_h30.dart';
import '../../../../core/ui/widgets/sized_box/gap_h50.dart';
import '../../../../core/ui/widgets/text/ui_body_medium.dart';
import '../../../../core/ui/widgets/text/ui_title_large.dart';
import '../../../../core/utils/res/app_image_pqth.dart';
import '../../../../core/utils/theme/app_color.dart';

class VerifyAuthWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget? cardWidget;
  final Widget? bottomWidget;
  const VerifyAuthWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.cardWidget,
    this.bottomWidget,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return UiScaffold(
      appBar: const UiAppBarBack(),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //
                SizedBox(
                  width: size.width * 0.3,
                  child: UiImageAsset(
                    AppImagePath.VERIFICATION,
                  ),
                ),
                const GapH50(),
                UiTitleLarge(
                  title,
                  color: AppColor.secondary,
                ),
                const GapH14(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: UiBodyMedium(
                    subTitle,
                    textAlign: TextAlign.center,
                    color: AppColor.labelColor,
                  ),
                ),
                const GapH50(),
                // card
                UiCard(
                  child: cardWidget,
                ),
                // resend
                const GapH30(),
                bottomWidget ?? const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
