import 'package:flutter/cupertino.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeVM extends ChangeNotifier{
  ItemScrollController itemScrollController = ItemScrollController();

  AnimationController denemController;

  scrollToPosition(int index){
    itemScrollController.scrollTo(index: index, duration: Duration(milliseconds: 300));
    /*autoScrollController.scrollToIndex(index,duration: Duration(milliseconds: 500));*/
  }

  setDenem(AnimationController controller){
    denemController = controller;
    notifyListeners();

  }
}