import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levent_ozkan_personal_website/core/extensions/context_extensions.dart';
import 'package:levent_ozkan_personal_website/core/init/theme_manager/theme_manager.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayer extends HookConsumerWidget {
  final String videoUrl;
  late VideoPlayerController _controller;

  CustomVideoPlayer({
    required this.videoUrl,
  }) {
    _controller = VideoPlayerController.network(videoUrl);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _theme = ref.watch(themeProvider);
    final isVideoInitialized = useState(false);

    useEffect(() {
      Future.microtask(() async {
        _controller.setVolume(0);
        _controller.setLooping(true);
        _controller.play();
        await _controller.initialize();
        isVideoInitialized.value = true;
      });
      return () => _controller.dispose();
    }, [videoUrl]);

    return isVideoInitialized.value && _controller.value.isInitialized
        ? FittedBox(
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: _controller.value.size.height,
              width: _controller.value.size.width,
              child: VideoPlayer(_controller),
            ),
          )
        : Center(
            child: CircularProgressIndicator(color: _theme.primaryColor),
          );
  }
}
