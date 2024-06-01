import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:mashura/daColor.dart';

class pending extends StatefulWidget {
  const pending({super.key});

  @override
  State<pending> createState() => _pendingState();
}

class _pendingState extends State<pending> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10.0),
      children: [
        CustomCard(
          title: 'يسرى',
          subtitle: 'استشارة قانونية - أسرة',
        ),
        SizedBox(height: 10),
        CustomCard(
          title: 'محمد',
          subtitle: 'خدمات ادارية - استخراج وثائق',
        ),
        SizedBox(height: 10),
        CustomCard(
          title: 'فاتح',
          subtitle: 'شكاوي و طلبات - معاملات ادارية',
        ),
      ],
    );
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;

  CustomCard({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 160,
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text(title, style: TextStyle(fontSize: 24)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subtitle,
                    style: ArabicTextStyle(
                      arabicFont: ArabicFont.elMessiri,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(
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
                        child: Text('عرض المحادثة'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade300,
                          foregroundColor: Colors.white,
                          textStyle: ArabicTextStyle(
                            arabicFont: ArabicFont.elMessiri,
                          ),
                        ),
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                        child: Text('إنهاء الخدمة'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
