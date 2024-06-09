// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'onboarding_controller.g.dart';

// import 'package:hedg/core/data/local/app_local_data_simple.dart';

final indexOnboardingProvider = StateProvider<int>((ref) => 0);

@riverpod
class OnboardingNotifier extends _$OnboardingNotifier {
  @override
  bool build() {
    _loadOnboardingStatus();
    return false;
  }

  Future<void> _loadOnboardingStatus() async {
    final prefs = await SharedPreferences.getInstance();
    state = prefs.getBool('onboardingCompleted') ?? false;
  }

  Future<void> completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboardingCompleted', true);
    state = true;
  }
}
