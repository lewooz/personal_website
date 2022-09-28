part of '../projects_section.dart';

class _Project extends HookConsumerWidget {
  final MyProjectsSectionModel project;

    const _Project({super.key, required this.project});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Flex(
            direction: useResponsive(largeDesktopValue: Axis.horizontal, tablet: Axis.vertical),
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        if (project.logo != null)
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Image.network(
                              project.logo!,
                              width: 60,
                            ),
                          ),
                        Expanded(
                            child: Text(project.name,
                                style: AppTextStyles.h2.copyWith(color: theme.black))),
                      ],
                    ),
                    Text(project.description ?? "",
                        style: AppTextStyles.body1.copyWith(color: theme.black)),
                    ...List.generate(
                        project.properties?.length ?? 0,
                            (propertyIndex) => Row(
                          children: [
                            const Icon(
                              Octicons.north_star,
                              size: 20,
                            ),
                            const Gap(10),
                            Expanded(
                                child: Text(
                                  project.properties![propertyIndex],
                                  style: AppTextStyles.body1.copyWith(color: theme.black),
                                ))
                          ],
                        ))
                  ].withGap(20),
                ),
              ),
              theme.veryBigSpace,
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Technologies Used",
                          textAlign: TextAlign.center,
                          style: AppTextStyles.h3.copyWith(color: theme.black, decoration: TextDecoration.underline),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(project.platforms.length, (index) {
                            final platform = project.platforms[index];
                            return Tooltip(
                              message: platform.name.capitalize,
                              child: Container(
                                width: 60,
                                height: 60,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: theme.normalBorderRadius,
                                    border: Border.all(color: theme.grey)),
                                child: FittedBox(
                                  child: Icon(platform.icon),
                                ),
                              ),
                            );
                          }).withGap(10),
                        ),
                        if(project.playStoreLink != null || project.appStoreLink != null)
                          _DownloadLinks(project: project)
                      ].withGap(20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}