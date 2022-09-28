import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseAsyncProviderWidget<T> extends HookConsumerWidget {
  final AsyncValue<T> value;
  final Widget? loadingWidget;
  final Widget Function(T) builder;
  final Widget Function(String errorMessage, int? errorCode)? errorBuilder;
  final bool showSnackBarOnError;

  const BaseAsyncProviderWidget({required this.value, required this.builder, this.loadingWidget, this.errorBuilder, this.showSnackBarOnError = true});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return value.when(
        error:(error,_) {
          debugPrint(error.toString());
          return const SizedBox();
        },
        loading: () => loadingWidget ?? const SizedBox(),
        data: builder
    );
  }
}
