import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levent_ozkan_personal_website/core/global_models/app_contents_model/app_contents_model.dart';
import 'package:levent_ozkan_personal_website/core/services/splash_services.dart';

class MainVM extends ChangeNotifier {

  final ScrollController scrollController = ScrollController();
  bool isTabBarVisible = true;
  bool scrollBarAtTop = true;


  toggleTabBarVisibility(){
    isTabBarVisible = !isTabBarVisible;
    notifyListeners();
  }

  bool onScrollNotification(UserScrollNotification notification){
    if(notification.direction == ScrollDirection.reverse){
      isTabBarVisible = false;
    } else if(notification.direction == ScrollDirection.forward){
      isTabBarVisible = true;
    }
    scrollBarAtTop = notification.metrics.pixels == 0;
    notifyListeners();
    return true;
  }

  scrollToPosition(int index){

  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

}

final mainVMProvider = ChangeNotifierProvider((_) => MainVM());

final appContentsFutureProvider = FutureProvider<AppContentsModel>((ref) async{
  await Future.delayed(const Duration(seconds: 1));
  return await ref.read(splashServicesProvider).fetchAppContents();
});