import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg/core/router/app_router_constant.dart';
import 'package:hedg/core/ui/pages/ui_scaffold.dart';
import 'package:hedg/core/ui/widgets/chips_buttons/ui_button.dart';
import 'package:hedg/core/ui/widgets/chips_buttons/ui_chip_icon.dart';
import 'package:hedg/core/ui/widgets/chips_buttons/ui_text_button.dart';
import 'package:hedg/core/ui/widgets/images/ui_image_asset.dart';
import 'package:hedg/core/ui/widgets/sized_box/gap_h20.dart';
import 'package:hedg/core/ui/widgets/sized_box/gap_h30.dart';
import 'package:hedg/core/ui/widgets/sized_box/gap_h50.dart';
import 'package:hedg/core/ui/widgets/text/ui_body_large.dart';
import 'package:hedg/core/ui/widgets/text/ui_title_large.dart';
import 'package:hedg/core/utils/localization/strings_manager.dart';
import 'package:hedg/core/utils/res/values_manager.dart';
import 'package:hedg/core/utils/theme/app_color.dart';
import 'package:hedg/features/onboarding/entities/onboarding_entity.dart';

import '../../../core/presenetation/controller/loading_controller.dart';
import '../controller/onboarding_controller.dart';

class OnboardingPage extends ConsumerWidget {
  OnboardingPage({super.key});

  _complete(BuildContext context, WidgetRef ref) async {
    ref.read(loadingProvider.notifier).state = true;
    await ref.read(onboardingNotifierProvider.notifier).completeOnboarding();
    ref.read(loadingProvider.notifier).state = false;
    context.go(AppRouterConstant.SIGN_UP);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexOnboarding = ref.watch(indexOnboardingProvider);
    final loading = ref.watch(loadingProvider);
    Size size = MediaQuery.of(context).size;
    return UiScaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : PageView.builder(
                onPageChanged: (value) {
                  // ref.read(indexOnboardingProvider.notifier).update((state) => value);
                },
                itemCount: onboardings.length,
                itemBuilder: (context, index) => SizedBox(
                  width: size.width,
                  height: size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              alignment: AlignmentDirectional.centerEnd,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                AppSizes.MARGIN_18,
                                AppSizes.MARGIN_18,
                                AppSizes.MARGIN_18,
                                AppSizes.MARGIN_100,
                              ),
                              child: UiTextButton(
                                text: C.SKIP,
                                style: Theme.of(context).textTheme.titleSmall,
                                color: AppColor.secondary,
                                onTap: () {
                                  _complete(context, ref);
                                },
                              ),
                            ),
                            Expanded(
                              // width: size.width,
                              // height: size.height / 3.2,
                              child: UiImageAsset(
                                onboardings[index].imageAssetUrl,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // const GapH30(),
                      Expanded(
                        child: Column(
                          children: [
                            const GapH50(),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppSizes.PADDING_40),
                              child: UiTitleLarge(
                                onboardings[index].title,
                                color: AppColor.secondary,
                              ),
                            ),
                            const GapH20(),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppSizes.PADDING_32),
                              child: UiBodyLarge(
                                onboardings[index].content,
                                color: AppColor.labelColor,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const GapH30(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                onboardings.length,
                                (index) => Container(
                                  width: AppSizes.WIDTH_20,
                                  height: AppSizes.HEIGHT_10,
                                  decoration: BoxDecoration(
                                    color: indexOnboarding == index
                                        ? AppColor.secondary
                                        : AppColor.subSecondary,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            const GapH50(),
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: AppSizes.PADDING_18),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Visibility(
                                    visible:
                                        indexOnboarding == 0 ? false : true,
                                    child: UiTextButton(
                                      text: C.BACK,
                                      color: AppColor.primary,
                                      onTap: () {
                                        ref
                                            .read(indexOnboardingProvider
                                                .notifier)
                                            .state -= 1;
                                      },
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                  ),
                                  UiChipIcon(
                                    icon: const Icon(
                                      Icons.arrow_forward_ios,
                                      color: AppColor.onPrimary,
                                    ),
                                    backgroundColor: AppColor.primary,
                                    shape: const CircleBorder(),
                                    onPressed: () {
                                      if (indexOnboarding == 2) {
                                        _complete(context, ref);
                                      } else {
                                        ref
                                            .read(indexOnboardingProvider
                                                .notifier)
                                            .state += 1;
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
