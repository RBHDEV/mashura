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
                subtitle: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: daSecondary,
                    foregroundColor: Colors.white,
                    textStyle: ArabicTextStyle(
                      arabicFont: ArabicFont.elMessiri,
                    ),
                  ),
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  child: Text('طلب الخدمة'),
                ),
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
                leading: Container(
                  width: 50,
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      avatar.Img,
                      fit: BoxFit.cover,
                      alignment: Alignment(0, -0.5),
                    ),
                  ),
                ),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: 250,
                height: 250,
                child: ClipRRect(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(300),
                      child: Image.asset(
                        avatarlist[widget.data].Img,
                        fit: BoxFit.cover,
                        alignment: Alignment(0, -0.5),
                      )),
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
            SizedBox(
              height: 50,
            ),
            Text(
              '⚖️ محامي معتمد لدى المحكمة العليا ⚖️',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'مرحبًا! أنا ${widget.data}، محامي محترف بخبرة سنوات في تقديم الاستشارات القانونية الفعّالة والشاملة للأفراد والشركات. أسعى لتوفير حلول قانونية مبتكرة ومخصصة تتناسب مع احتياجات كل عميل لضمان حقوقهم وتحقيق أهدافهم القانونية.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '🔹 التخصصات:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- الاستشارات القانونية العامة\n- القضايا التجارية\n- العقود والاتفاقيات\n- حل النزاعات والتقاضي\n- قضايا الأسرة والطلاق\n- القضايا العقارية',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '🔹 المؤهلات:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- شهادة في القانون من الجامعة مرموقة\n- عضو في نقابة المحامين اسم النقابة\n- حضور دورات تدريبية وورش عمل متقدمة في مجالات محددة',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '🔹 ما أقدمه:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- استشارات قانونية مخصصة وفورية\n- تحليل قانوني دقيق وموضوعي\n- مساعدة في إعداد وصياغة العقود القانونية\n- تمثيل العملاء في المحاكم والمؤسسات القانونية\n- استراتيجيات فعّالة لحل النزاعات',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'التواصل معي سهل ومباشر. لا تتردد في الاتصال للحصول على استشارة قانونية موثوقة.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '📞 [0665892145]',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '📧 [muhami@gmail.com]',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'معًا، نحقق العدالة والإنصاف.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
