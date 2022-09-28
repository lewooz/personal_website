/*
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
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
            IconButton(icon: Icon(Entypo.linkedin,color: Colors.white,), onPressed: ()=>goUrl(context, "https://tr.linkedin.com/in/levent-%C3%B6zkan-31b5b487")),
              _buildItem(
                textStyle,
                    () =>
                        launch('https://github.com/lewooz/personal_website'),
                'Source code',
              ),
            ],
          ),
        ),
      ),
    );
  }

  goUrl(BuildContext context, String url) async {
    await launch(url);
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
*/
