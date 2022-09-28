part of '../projects_section.dart';

class _DownloadLinks extends HookConsumerWidget {
  final MyProjectsSectionModel project;

  const _DownloadLinks({super.key, required this.project});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    launchUrl(String url){
      launch(url);
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Download Links",
          style: AppTextStyles.h3.copyWith(color: theme.black, decoration: TextDecoration.underline),
        ),
        const Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (project.appStoreLink != null)
              InkWell(
              onTap: () => launchUrl(project.appStoreLink!),
              child: Image.asset(PngImages.appstoreBadge.path, width: 130)),
            if (project.playStoreLink != null)
              InkWell(
               onTap: () => launchUrl(project.playStoreLink!),
               child: Image.asset(PngImages.googlePlayBadge.path, width: 130))
          ].withGap(20),
        )
      ],
    );
  }
}
