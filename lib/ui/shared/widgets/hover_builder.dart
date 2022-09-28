import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HoverBuilder extends HookConsumerWidget {
  final Widget Function(bool isHovering) builder;
  final VoidCallback? onTap;

  const HoverBuilder({required this.builder, this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isHovering = useState(false);

    return onTap == null
        ? MouseRegion(
            onEnter: (_) => isHovering.value = true,
            onExit: (_) => isHovering.value = false,
            cursor: SystemMouseCursors.click,
            child: builder(isHovering.value),
          )
        : InkWell(
            onTap: onTap,
            onHover: (hovering) => isHovering.value = hovering,
            child: builder(isHovering.value),
          );
  }
}
