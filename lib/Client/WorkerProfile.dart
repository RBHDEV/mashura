import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:mashura/Model/avatarclass.dart';
import 'package:mashura/daColor.dart';

class WorkerProfile extends StatefulWidget {
  final String data;
  const WorkerProfile({super.key, required this.data});

  @override
  State<WorkerProfile> createState() => _WorkerProfileState();
}

class _WorkerProfileState extends State<WorkerProfile> {
  List<String> yoe = ['3', '7', '1', '9', '5', '2', '8'];

  List<String> meet = [
    'يمكن',
    'لا يمكن',
    'يمكن',
    'يمكن',
    'لا يمكن',
    'يمكن',
    'لا يمكن',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.data),
        titleTextStyle:
            ArabicTextStyle(arabicFont: ArabicFont.elMessiri, fontSize: 22),
        centerTitle: true,
        backgroundColor: daSecondary,
        foregroundColor: daThird,
      ),
      body: ListView.builder(
          itemCount: avatarlist.length,
          itemBuilder: ((context, index) {
            final avatar = avatarlist[index];
            return Card(
              color: daThird,
              elevation: 3,
              margin: EdgeInsets.all(10),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profile(
                                data: avatar.id,
                              )));
                },
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                title: RichText(
                  text: TextSpan(
                      style: ArabicTextStyle(
                          arabicFont: ArabicFont.elMessiri,
                          fontSize: 20,
                          color: daSecondary),
                      text: avatar.Name,
                      children: [
                        TextSpan(
                            text: '\nسنوات الخبرة: ',
                            style: ArabicTextStyle(
                                arabicFont: ArabicFont.elMessiri,
                                fontSize: 13,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: yoe[index],
                            style: ArabicTextStyle(
                              arabicFont: ArabicFont.elMessiri,
                              fontSize: 13,
                            )),
                        TextSpan(
                            text: '\nالإلتقاء الشخصي: ',
                            style: ArabicTextStyle(
                                arabicFont: ArabicFont.elMessiri,
                                fontSize: 13,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: meet[index],
                            style: ArabicTextStyle(
                              arabicFont: ArabicFont.elMessiri,
                              fontSize: 13,
                            )),
                      ]),
                ),
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(avatar.Img)),
              ),
            );
          })),
    );
  }
}

class Profile extends StatefulWidget {
  final int data;
  const Profile({super.key, required this.data});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: daSecondary,
        foregroundColor: daThird,
        title: Text('ملف الشخصي'),
        centerTitle: true,
        titleTextStyle:
            ArabicTextStyle(arabicFont: ArabicFont.elMessiri, fontSize: 22),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image.asset(avatarlist[widget.data].Img),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
              child: Text(
            avatarlist[widget.data].Name,
            style: ArabicTextStyle(
                arabicFont: ArabicFont.elMessiri,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          )),
        ],
      ),
    );
  }
}
