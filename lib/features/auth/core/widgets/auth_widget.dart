import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hedg/core/ui/pages/ui_scaffold.dart';
import 'package:hedg/core/ui/widgets/images/ui_svg_image_asset.dart';
import 'package:hedg/core/ui/widgets/sized_box/gap_h30.dart';
import 'package:hedg/core/ui/widgets/text/ui_title_large.dart';
import 'package:hedg/core/utils/res/app_svg_path.dart';
import 'package:hedg/core/utils/res/values_manager.dart';
import 'package:hedg/core/utils/theme/app_color.dart';

import '../../../../core/utils/res/app_shadow.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({
    super.key,
    required this.title,
    required this.cardWidget,
  });
  final String title;
  final Widget cardWidget;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return UiScaffold(
        statusBarColor: AppColor.primary,
        body: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              // * draw
              SizedBox(
                // height: 812
                /// height box: 347
                /// precentage box: 43%
                /// side point height: 274
                /// side point precentage: 34%

                height: size.height * 0.43,
                width: size.width,
                child: CustomPaint(
                  painter: MyPainter(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const GapH30(),
                      const GapH30(),
                      SizedBox(
                        width: size.width * 0.38,
                        child: UiSvgImageAsset(
                          AppSvgPath.LOGO_WITH_SIDE_TEXT,
                          color: AppColor.onPrimary,
                        ),
                      ),
                      const GapH30(),
                      FittedBox(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.2),
                          child: UiTitleLarge(
                            title,
                            color: AppColor.onPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // * card
              SizedBox(
                height: size.height,
                width: size.width,
                child: SingleChildScrollView(
                  child: Container(
                    // alignment: Alignment.topCenter,
                    // height: size.height,
                    width: size.width,
                    margin: EdgeInsetsDirectional.only(
                      start: AppSizes.MARGIN_26,
                      end: AppSizes.MARGIN_26,
                      top: size.height * 0.28,
                      bottom: AppSizes.MARGIN_10,
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: AppSizes.PADDING_32,
                      horizontal: AppSizes.PADDING_20,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(
                        AppSizes.RADIUS_14,
                      ),
                      boxShadow: AppShadow.shadow(),
                    ),
                    child: cardWidget,

                    /// width: 375
                    /// box width: 323
                    /// precentage margin: 14%
                    /// 7 for each side
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // height: 812
    /// height box: 347
    /// precentage box: 43%
    /// side point height: 274
    /// side point precentage: 34%
    /// side precentage from box: 79%
    // Use the canvas to draw something
    var paint = Paint()..color = AppColor.primary;

    Path path = Path();
    path.lineTo(
      // left bottom side point horizontal

      0,
      // left bottom side point vertical
      size.height * 0.79,
    );
    path.quadraticBezierTo(
      // center point horizontal
      size.width / 2,
      // center point vertical
      size.height * 1.2,
      // right bottom side point horizontal
      size.width,
      // right bottom side point vertical
      size.height * 0.79,
    );
    path.lineTo(
      // right top corner horizontal
      size.width,
      // right top corner vertical
      0,
    );
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
