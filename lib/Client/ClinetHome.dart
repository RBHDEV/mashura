import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:mashura/Client/WorkerProfile.dart';
import 'package:mashura/Shared/ProfileAvatars.dart';
import 'package:mashura/daColor.dart';

class ClientHome extends StatefulWidget {
  const ClientHome({super.key});

  @override
  State<ClientHome> createState() => _ClientHomeState();
}

class _ClientHomeState extends State<ClientHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 110,
              child: ListofAvatars(),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: daThird,
                          foregroundColor: daSecondary,
                          elevation: 3,
                          alignment: Alignment(1, 0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textStyle: ArabicTextStyle(
                              arabicFont: ArabicFont.cairo,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          fixedSize: Size(double.maxFinite, 125)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => istichara(
                                      data: 'إستشارة قانونية',
                                    )));
                      },
                      child: Stack(alignment: Alignment(-3, 0), children: [
                        Text('إستشارة قانونية'),
                        Container(
                          width: 100,
                          child: Opacity(
                            opacity: 0.1,
                            child: Image.asset(
                              'Image/legaldoc.png',
                            ),
                          ),
                        )
                      ])),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: daThird,
                          foregroundColor: daSecondary,
                          elevation: 3,
                          alignment: Alignment(1, 0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textStyle: ArabicTextStyle(
                              arabicFont: ArabicFont.cairo,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          fixedSize: Size(double.maxFinite, 125)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => idara(
                                      data: 'خدمات إدارية',
                                    )));
                      },
                      child: Stack(alignment: Alignment(-5.6, 0), children: [
                        Text('خدمات إدارية'),
                        Container(
                          width: 100,
                          child: Opacity(
                            opacity: 0.1,
                            child: Image.asset(
                              'Image/file.png',
                            ),
                          ),
                        )
                      ])),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: daThird,
                          foregroundColor: daSecondary,
                          elevation: 3,
                          alignment: Alignment(1, 0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textStyle: ArabicTextStyle(
                              arabicFont: ArabicFont.cairo,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          fixedSize: Size(double.maxFinite, 125)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chakawi(
                                      data: 'الإستشارات المهنية',
                                    )));
                      },
                      child: Stack(alignment: Alignment(-1.8, 0), children: [
                        Text('الإستشارات المهنية'),
                        Container(
                          width: 100,
                          child: Opacity(
                            opacity: 0.1,
                            child: Image.asset(
                              'Image/communication.png',
                            ),
                          ),
                        )
                      ])),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class istichara extends StatefulWidget {
  final String data;
  const istichara({super.key, required this.data});

  @override
  State<istichara> createState() => _isticharaState();
}

class _isticharaState extends State<istichara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data),
        backgroundColor: daSecondary,
        foregroundColor: daPrimary,
        titleTextStyle: ArabicTextStyle(
            arabicFont: ArabicFont.avenirArabic,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 130,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: daThird,
                        foregroundColor: daSecondary,
                        elevation: 3,
                        shape: RoundedRectangleBorder(),
                        textStyle: ArabicTextStyle(
                            arabicFont: ArabicFont.cairo,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                        fixedSize: Size(175, 125)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WorkerProfile(
                                    data: ' عقاري',
                                  )));
                    },
                    child: Stack(alignment: Alignment(0, 0), children: [
                      Text('عقاري '),
                    ])),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: daThird,
                        foregroundColor: daSecondary,
                        elevation: 3,
                        shape: RoundedRectangleBorder(),
                        textStyle: ArabicTextStyle(
                            arabicFont: ArabicFont.cairo,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                        fixedSize: Size(175, 125)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WorkerProfile(
                                    data: 'عمالي ',
                                  )));
                    },
                    child: Stack(alignment: Alignment(0, 0), children: [
                      Text('عمالي '),
                    ])),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: daThird,
                        foregroundColor: daSecondary,
                        elevation: 3,
                        shape: RoundedRectangleBorder(),
                        textStyle: ArabicTextStyle(
                            arabicFont: ArabicFont.cairo,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                        fixedSize: Size(175, 125)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WorkerProfile(
                                    data: ' أسرة',
                                  )));
                    },
                    child: Stack(alignment: Alignment(0, 0), children: [
                      Text('أسرة '),
                    ])),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: daThird,
                        foregroundColor: daSecondary,
                        elevation: 3,
                        shape: RoundedRectangleBorder(),
                        textStyle: ArabicTextStyle(
                            arabicFont: ArabicFont.cairo,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                        fixedSize: Size(175, 125)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WorkerProfile(
                                    data: 'مدني ',
                                  )));
                    },
                    child: Stack(alignment: Alignment(0, 0), children: [
                      Text('مدني '),
                    ])),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: daThird,
                        foregroundColor: daSecondary,
                        elevation: 3,
                        shape: RoundedRectangleBorder(),
                        textStyle: ArabicTextStyle(
                            arabicFont: ArabicFont.cairo,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                        fixedSize: Size(175, 125)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WorkerProfile(
                                    data: 'تجاري ',
                                  )));
                    },
                    child: Stack(alignment: Alignment(0, 0), children: [
                      Text('تجاري '),
                    ])),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: daThird,
                        foregroundColor: daSecondary,
                        elevation: 3,
                        shape: RoundedRectangleBorder(),
                        textStyle: ArabicTextStyle(
                            arabicFont: ArabicFont.cairo,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                        fixedSize: Size(175, 125)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WorkerProfile(
                                    data: 'عقود',
                                  )));
                    },
                    child: Stack(alignment: Alignment(0, 0), children: [
                      Text('عقود'),
                    ])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class idara extends StatefulWidget {
  final String data;
  const idara({super.key, required this.data});

  @override
  State<idara> createState() => _idaraState();
}

class _idaraState extends State<idara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data),
        backgroundColor: daSecondary,
        foregroundColor: daPrimary,
        titleTextStyle: ArabicTextStyle(
            arabicFont: ArabicFont.avenirArabic,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Center(
                child: Text(
                  'إستخراج الوثائق',
                  style: ArabicTextStyle(
                      color: daSecondary,
                      arabicFont: ArabicFont.cairo,
                      fontSize: 30,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: daThird,
                          foregroundColor: daSecondary,
                          elevation: 3,
                          shape: RoundedRectangleBorder(),
                          textStyle: ArabicTextStyle(
                              arabicFont: ArabicFont.cairo,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          fixedSize: Size(175, 125)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WorkerProfile(
                                      data: 'الجنسية',
                                    )));
                      },
                      child: Stack(alignment: Alignment(0, 0), children: [
                        Text('الجنسية'),
                      ])),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: daThird,
                          foregroundColor: daSecondary,
                          elevation: 3,
                          shape: RoundedRectangleBorder(),
                          textStyle: ArabicTextStyle(
                              arabicFont: ArabicFont.cairo,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          fixedSize: Size(175, 125)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WorkerProfile(
                                      data: 'شهادة اقامة ',
                                    )));
                      },
                      child: Stack(alignment: Alignment(0, 0), children: [
                        Text('شهادة اقامة  '),
                      ])),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: daThird,
                          foregroundColor: daSecondary,
                          elevation: 3,
                          shape: RoundedRectangleBorder(),
                          textStyle: ArabicTextStyle(
                              arabicFont: ArabicFont.cairo,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          fixedSize: Size(175, 125)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WorkerProfile(
                                      data: 'شهادة ميلاد',
                                    )));
                      },
                      child: Stack(alignment: Alignment(0, 0), children: [
                        Text('شهادة ميلاد'),
                      ])),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  'الإجراءات',
                  style: ArabicTextStyle(
                      color: daSecondary,
                      arabicFont: ArabicFont.cairo,
                      fontSize: 30,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: daThird,
                          foregroundColor: daSecondary,
                          elevation: 3,
                          shape: RoundedRectangleBorder(),
                          textStyle: ArabicTextStyle(
                              arabicFont: ArabicFont.cairo,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          fixedSize: Size(175, 125)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WorkerProfile(
                                      data: 'تقديم شكاوى',
                                    )));
                      },
                      child: Stack(alignment: Alignment(0, 0), children: [
                        Text('تقديم شكاوى'),
                      ])),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: daThird,
                          foregroundColor: daSecondary,
                          elevation: 3,
                          shape: RoundedRectangleBorder(),
                          textStyle: ArabicTextStyle(
                              arabicFont: ArabicFont.cairo,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          fixedSize: Size(175, 125)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WorkerProfile(
                                      data: 'كتابة عرائض',
                                    )));
                      },
                      child: Stack(alignment: Alignment(0, 0), children: [
                        Text('كتابة عرائض'),
                      ])),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: daThird,
                          foregroundColor: daSecondary,
                          elevation: 3,
                          shape: RoundedRectangleBorder(),
                          textStyle: ArabicTextStyle(
                              arabicFont: ArabicFont.cairo,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          fixedSize: Size(175, 125)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WorkerProfile(
                                      data: 'تقديم طعون',
                                    )));
                      },
                      child: Stack(alignment: Alignment(0, 0), children: [
                        Text('تقديم طعون'),
                      ])),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  'الوثائق اللازمة',
                  style: ArabicTextStyle(
                      color: daSecondary,
                      arabicFont: ArabicFont.cairo,
                      fontSize: 30,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: daThird,
                          foregroundColor: daSecondary,
                          elevation: 3,
                          shape: RoundedRectangleBorder(),
                          textStyle: ArabicTextStyle(
                              arabicFont: ArabicFont.cairo,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          fixedSize: Size(175, 125)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WorkerProfile(
                                      data: 'حماية الملكية الفكرية',
                                    )));
                      },
                      child: Stack(alignment: Alignment(0, 0), children: [
                        Text('حماية الملكية الفكرية'),
                      ])),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: daThird,
                          foregroundColor: daSecondary,
                          elevation: 3,
                          shape: RoundedRectangleBorder(),
                          textStyle: ArabicTextStyle(
                              arabicFont: ArabicFont.cairo,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          fixedSize: Size(175, 125)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WorkerProfile(
                                      data: 'انشاء مؤسسة ناشئة',
                                    )));
                      },
                      child: Stack(alignment: Alignment(0, 0), children: [
                        Text('انشاء مؤسسة ناشئة'),
                      ])),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: daThird,
                          foregroundColor: daSecondary,
                          elevation: 3,
                          shape: RoundedRectangleBorder(),
                          textStyle: ArabicTextStyle(
                              arabicFont: ArabicFont.cairo,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          fixedSize: Size(175, 125)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WorkerProfile(
                                      data: 'عقود الملكية',
                                    )));
                      },
                      child: Stack(alignment: Alignment(0, 0), children: [
                        Text('عقود الملكية'),
                      ])),
                ],
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class chakawi extends StatefulWidget {
  final String data;
  const chakawi({super.key, required this.data});

  @override
  State<chakawi> createState() => _chakawiState();
}

class _chakawiState extends State<chakawi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data),
        backgroundColor: daSecondary,
        foregroundColor: daPrimary,
        titleTextStyle: ArabicTextStyle(
            arabicFont: ArabicFont.avenirArabic,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 130,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: daThird,
                        foregroundColor: daSecondary,
                        elevation: 3,
                        shape: RoundedRectangleBorder(),
                        textStyle: ArabicTextStyle(
                            arabicFont: ArabicFont.cairo,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                        fixedSize: Size(175, 125)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WorkerProfile(
                                    data: 'خدمات التقاعد',
                                  )));
                    },
                    child: Stack(alignment: Alignment(0, 0), children: [
                      Text('خدمات التقاعد'),
                    ])),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: daThird,
                        foregroundColor: daSecondary,
                        elevation: 3,
                        shape: RoundedRectangleBorder(),
                        textStyle: ArabicTextStyle(
                            arabicFont: ArabicFont.cairo,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                        fixedSize: Size(175, 125)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WorkerProfile(
                                    data: 'ملفات توظيف',
                                  )));
                    },
                    child: Stack(alignment: Alignment(0, 0), children: [
                      Text('ملفات توظيف'),
                    ])),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: daThird,
                        foregroundColor: daSecondary,
                        elevation: 3,
                        shape: RoundedRectangleBorder(),
                        textStyle: ArabicTextStyle(
                            arabicFont: ArabicFont.cairo,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        fixedSize: Size(175, 125)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WorkerProfile(
                                    data: 'إشكالات خلال المسار المهني',
                                  )));
                    },
                    child: Stack(alignment: Alignment(0, 0), children: [
                      Text(
                        'إشكالات خلال المسار المهني',
                        textAlign: TextAlign.center,
                      ),
                    ])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
