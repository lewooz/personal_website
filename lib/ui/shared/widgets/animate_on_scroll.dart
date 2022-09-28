import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levent_ozkan_personal_website/ui/shared/widgets/animate_on_visible.dart';
import 'package:levent_ozkan_personal_website/ui/shared/widgets/custom_animation.dart';

class AnimateOnScroll extends HookConsumerWidget {
  final Key visibilityKey;
  final Widget child;
  final Curve? curve;
  final Duration? duration, delay;
  final bool scaleUp;
  final CustomAnimationType animationType;
  final double from;

  const AnimateOnScroll(
      {super.key,
      required this.visibilityKey,
      required this.child,
      required this.animationType,
      this.duration,
      this.delay,
      this.curve,
      this.scaleUp = false,
      this.from = 40.0});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimateOnVisible(
        visibilityKey: visibilityKey,
        onPageBuilder: (_, value) => CustomAnimation(
              animationType: animationType,
              animate: value,
              curve: curve,
              duration: duration,
              delay: delay,
              scaleUp: scaleUp,
              from: from,
              child: child,
            ));
  }
}
