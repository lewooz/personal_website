import 'package:flutter/material.dart';

class CustomDraggable extends StatelessWidget {

  Widget child;

  CustomDraggable({this.child});

  ValueNotifier<List<double>> posValueListener = ValueNotifier([0.68, 0.65]);
  double _horizontalPos = 0.68;
  double _verticalPos = 0.65;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final handle = GestureDetector(
            onPanUpdate: (details) {

              ///Align 0.0 - 1.0 arası değer alıyor. Burada dikeydeki ve yataydaki noktayı hesaplıyoruz.
              _verticalPos = (_verticalPos + details.delta.dy / (context.size.height)).clamp(0.0, 1.0);
              _horizontalPos =  (_horizontalPos + details.delta.dx / (context.size.width)).clamp(0.0, 1.0);
              posValueListener.value = [_horizontalPos, _verticalPos];
            },
            child: Container(
              child: child,
            )
        );

        return ValueListenableBuilder<List<double>>(
          valueListenable: posValueListener,
          builder:
              (BuildContext context, List<double> value, Widget child) {
            return Align(
              alignment: Alignment(value[0] * 2 - 1, value[1] * 2 - 1),
              child: handle,
            );
          },
        );
      },
    );
  }
}
