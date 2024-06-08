import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/theme/app_color.dart';
import 'ui_app_bar.dart';

class UiAppBarBack extends StatelessWidget implements PreferredSizeWidget {
  const UiAppBarBack({super.key});

  @override
  Widget build(BuildContext context) {
    return UiAppBar(
      leading: InkWell(
        onTap: () => context.pop(),
        child: const Icon(
          Icons.arrow_back_ios,
          color: AppColor.primary,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
