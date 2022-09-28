import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levent_ozkan_personal_website/core/init/theme_manager/theme_manager.dart';
import 'package:levent_ozkan_personal_website/ui/shared/widgets/hover_builder.dart';

import '../viewmodel/main_viewmodel.dart';

class TopBar extends HookConsumerWidget {
  final String centerImageUrl;

  const TopBar({
    required this.centerImageUrl,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _theme = ref.watch(themeProvider);
    final isBarVisible = ref.watch(mainVMProvider.select((value) => value.isTabBarVisible));
    final scrollBarAtTop = ref.watch(mainVMProvider.select((value) => value.scrollBarAtTop));

    return AnimatedPositioned(
      duration: _theme.normalDuration,
      top: isBarVisible ? 0 : -80,
      left: 0,
      right: 0,
      child: HoverBuilder(
        builder: (bool isHovering) => AnimatedContainer(
          duration: _theme.normalDuration,
          height: 80,
          color: !scrollBarAtTop || isHovering ? _theme.bgWhite : Colors.transparent  ,
          child: Center(
            child: Image.network(centerImageUrl),
          ),
        ),
      ),
    );
  }


}