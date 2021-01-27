import 'package:flutter/cupertino.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeVM extends ChangeNotifier{
  ItemScrollController itemScrollController = ItemScrollController();

  scrollToPosition(int index){
    itemScrollController.scrollTo(index: index, duration: Duration(milliseconds: 300));
  }
}