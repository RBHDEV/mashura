import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(flex: 1, child: Container(child: ListofAvatars())),
          Expanded(
              flex: 5,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: daThird,
                                foregroundColor: daSecondary,
                                elevation: 3,
                                shape: LinearBorder(),
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
                                            data: 'إستشارة قانونية',
                                          )));
                            },
                            child: Stack(alignment: Alignment(0, 0), children: [
                              Text('إستشارة قانونية'),
                              Container(
                                alignment: Alignment(0, 0),
                                width: 100,
                                child: Opacity(
                                  opacity: 0.1,
                                  child: Image.asset(
                                    'Image/legaldoc.png',
                                  ),
                                ),
                              )
                            ])),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: daThird,
                                foregroundColor: daSecondary,
                                elevation: 3,
                                shape: LinearBorder(),
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
                                            data: 'خدمات إدارية',
                                          )));
                            },
                            child: Stack(alignment: Alignment(0, 0), children: [
                              Text('خدمات إدارية'),
                              Container(
                                alignment: Alignment(0, 0),
                                width: 100,
                                child: Opacity(
                                  opacity: 0.1,
                                  child: Image.asset(
                                    'Image/file.png',
                                  ),
                                ),
                              )
                            ])),
                      ],
                    ),
                    SizedBox(
                      height: 100,
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
                                shape: LinearBorder(),
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
                                            data: 'منازعات عمالية',
                                          )));
                            },
                            child: Stack(alignment: Alignment(0, 0), children: [
                              Text('منازعات عمالية'),
                              Container(
                                alignment: Alignment(0, 0),
                                width: 100,
                                child: Opacity(
                                  opacity: 0.1,
                                  child: Image.asset(
                                    'Image/opposition.png',
                                  ),
                                ),
                              )
                            ])),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: daThird,
                                foregroundColor: daSecondary,
                                elevation: 3,
                                shape: LinearBorder(),
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
                                            data: 'شكاوي و طلبات',
                                          )));
                            },
                            child: Stack(alignment: Alignment(0, 0), children: [
                              Text('شكاوي و طلبات'),
                              Container(
                                alignment: Alignment(0, 0),
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
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
