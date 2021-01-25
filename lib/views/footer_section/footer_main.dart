import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:levent_ozkan_personal_website/utilities/screen_sizes.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final TextStyle textStyle = Theme.of(context).accentTextTheme.bodyText2;
    ScreenSize.recalculate(context);
    return Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      color: Colors.black87,
      child: Center(
        child: Container(
          width: 100.wb,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildItem(
                textStyle,
                    () => launch('https://flutter.dev/'),
                'Created with Flutter',
              ),
              _buildItem(
                textStyle,
                    () =>
                        launch('https://github.com/louisdeveseleer/resume_web'),
                'Source code',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(TextStyle textStyle, VoidCallback callback, String text) {
    return FittedBox(
      child: InkWell(
        onTap: callback,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
