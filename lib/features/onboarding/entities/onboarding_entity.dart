// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hedg/core/utils/res/app_image_pqth.dart';

import '../../../core/utils/localization/strings_manager.dart';

class OnboardingEntity {
  final String imageAssetUrl;
  final String title;
  final String content;
  OnboardingEntity({
    required this.imageAssetUrl,
    required this.title,
    required this.content,
  });
}

final List<OnboardingEntity> onboardings = [
  OnboardingEntity(
    imageAssetUrl: AppImagePath.ONBOARDING1,
    title: C.SHAPE_YOUR_FINANCIAL_FUTURE,
    content:
        C.INVEST_YOUR_MONEY_BY_STARTING_WITH_HEDGE_AND_SECURE_FINANCIAL_FREEDOM,
  ),
  OnboardingEntity(
    imageAssetUrl: AppImagePath.ONBOARDING2,
    title: C.TRACK_YOUR_INVESTMENTS,
    content: C.SEE_YOUR_RETURN_ON_INVESTMETNS_IN_THE_SELECTED_PLANS,
  ),
  OnboardingEntity(
    imageAssetUrl: AppImagePath.ONBOARDING3,
    title: C.CALCULATE_BEFORE_INVESTING,
    content:
        C.CALCULATE_YOUR_POTENTIAL_GROWTH_TO_CHOOSE_THE_PERFECT_OPTION_FOR_YOU,
  ),
];
