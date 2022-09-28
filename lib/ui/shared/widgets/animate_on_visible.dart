import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AnimateOnVisible extends HookWidget {
  final Widget Function(BuildContext context, bool value) onPageBuilder;
  final Key visibilityKey;

  AnimateOnVisible({required this.visibilityKey ,required this.onPageBuilder});

  @override
  Widget build(BuildContext context) {
    final animateWidget = useState(false);
    useAutomaticKeepAlive();

    return VisibilityDetector(
      key: visibilityKey,
      onVisibilityChanged: !animateWidget.value ? (visibilityInfo) {
        if (visibilityInfo.visibleFraction > 0.1 && !animateWidget.value) {
          animateWidget.value = true;
        }
      } : null,
      child: onPageBuilder(context,animateWidget.value)
    );
  }
}
