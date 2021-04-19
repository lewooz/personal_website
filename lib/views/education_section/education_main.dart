import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:levent_ozkan_personal_website/utilities/screen_sizes.dart';
import 'package:levent_ozkan_personal_website/views/widgets/reveal_anim.dart';


class Education extends StatefulWidget {

  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    ScreenSize.recalculate(context);
    return Container(
      color: Color(0xff0031B4),
      padding: EdgeInsets.symmetric(
          vertical: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Entypo.graduation_cap,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(width: 10,),
              Text(
                "Education",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w700
                ),
              )
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            constraints: BoxConstraints(
                maxWidth: 1300
            ),
            child: RevealAnim(
              key: Key("education"),
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                      leading: Image.asset("assets/png/isik_logo.png", width: 50,),
                      title: Text(
                    "F.M.V. Işık Üniversitesi - Faculty of Engineering - Computer Engineering",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                        ),
                  ),
                    subtitle: Text(
                      "2006 - 2011",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Divider(color: Colors.white,),
                  ListTile(
                    leading: Image.asset("assets/png/sisli_terakki_logo.png", width: 50,),
                    title: Text(
                      "T.V.O. Özel Şişli Terakki Lisesi",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    subtitle: Text(
                      "2003 - 2006",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Divider(color: Colors.white,),
                  ListTile(
                    leading: Image.asset("assets/png/eyuboglu_logo.png", width: 50,),
                    title: Text(
                      "Özel Eyüboğlu Koleji",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    subtitle: Text(
                      "1998 - 2003",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Divider(color: Colors.white,),
                  ListTile(
                    leading: Image.asset("assets/png/turan_logo.png", width: 50,),
                    title: Text(
                      "Suadiye Mediha Tansel İlköğretim Okulu",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    subtitle: Text(
                      "1995 - 1998",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  )

                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}
