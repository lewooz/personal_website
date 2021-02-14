import 'package:flutter/material.dart';
import 'package:levent_ozkan_personal_website/utilities/screen_sizes.dart';
import 'package:levent_ozkan_personal_website/views/widgets/timeline_tile.dart';

class Career extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize.recalculate(context);
    return Container(
      color: Color(0xff5B74B8),
      padding: EdgeInsets.symmetric(
        vertical: 50,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
            maxWidth: 1300
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(width: 10,),
                Text(
                  "Career",
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
            ExpandableTile(
              isFirst: true,
              date: '2019 - present',
              title: 'Mobile / Web Application Developer',
              subtitle: 'Depixen, Ataşehir/Istanbul',
              extras: [
                ExtraLine(
                  text:'Developing global web and mobile applications using the most recent technologies.',
                ),
                ExtraLine(
                  text: 'Designing and architecting the frontend according to the database and backend technologies being used like Neo4J, firestore as database and flask(python) as backend service.',
                ),
                ExtraLine(
                    text: 'Creating unique widgets/components on both Flutter framework and React library depending on the prototypes made by the design team.(No premade UI library usage)'),
                ExtraLine(
                    text: 'Leading a group of interns on their way to becoming an expert developer.'),
                ExtraLine(
                    text: 'Worked in developing a no-code development platform project on flutter'),
              ],
            ),
            ExpandableTile(
              date: '2016-2019',
              title: 'Sales Engineer',
              subtitle: 'CTS Bilişim, Maltepe/Istanbul',
              extras: [
                ExtraLine(
                  text:"Making researches; marketing exercises; creating dealer network; organizing timed dealer visitings to widen customer portfolio."
                ),
                ExtraLine(
                  text: 'Arranging meetings, preparing reports, make offers and presentations as part of sales work.',
                ),
                ExtraLine(
                    text: 'To realize sales and customer satisfaction objectives.'),
                ExtraLine(
                    text: 'Carrying out the coordination between the company and the customer, document management.'),
                ExtraLine(
                    text: 'Making required researches about other contenders and their products in the market.'),
                ExtraLine(
                    text: 'Preparing offers depending on customer demands and following up the process after that.'),
              ],
            ),
            ExpandableTile(
              date: '2013-2014',
              title: 'ERP JD Edwards Technical Consultant (Outsource)',
              subtitle: 'Eczacıbaşı Baxter, Şişli/Istanbul',
              extras: [],
            ),
            ExpandableTile(
              date: '2013-2014',
              title: 'ERP JD Edwards Technical Consultant',
              subtitle: 'Apps Akademi, Kozyatağı/Istanbul',
              extras: [
                ExtraLine(
                    text:"Taking active role at managing ERP modules."
                ),
                ExtraLine(
                  text: 'Giving technical support and training to users.',
                ),
                ExtraLine(
                    text: 'Solving ERP problems of the users.'),
                ExtraLine(
                    text: 'Giving technical support for all the applications that the company is using.'),
                ExtraLine(
                    text: 'Taking part in the development stages of projects which mostly consists of database operations.'),
              ],
            ),
            ExpandableTile(
              date: '2009',
              title: 'Oracle Hyperion and Java Intern',
              subtitle: 'ING Bank, Maslak/Istanbul',
              extras: [ ],
            ),
            ExpandableTile(
              date: '2008',
              title: 'Hardware Intern',
              subtitle: 'Sandoz İlaç, Maslak/Istanbul',
              extras: [ ],
            )

          ],
        ),
      ),
    );
  }
}
