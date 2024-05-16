import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:mashura/daColor.dart';

class ClientSettings extends StatefulWidget {
  const ClientSettings({super.key});

  @override
  State<ClientSettings> createState() => _ClientSettingsState();
}

class _ClientSettingsState extends State<ClientSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                width: 200,
                child: Image.asset(
                  'Image/legal.png',
                )),
          ),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: daThird,
                  foregroundColor: daSecondary,
                  shape: LinearBorder(),
                  fixedSize: Size(200, 50)),
              onPressed: () {},
              icon: Icon(Icons.edit),
              label: Text(
                'تعديل الحساب',
                style: ArabicTextStyle(
                    arabicFont: ArabicFont.elMessiri, fontSize: 20),
              )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: daThird,
                  foregroundColor: daSecondary,
                  shape: LinearBorder(),
                  fixedSize: Size(200, 50)),
              onPressed: () {},
              icon: Icon(Icons.payment),
              label: Text(
                'الدفع',
                style: ArabicTextStyle(
                    arabicFont: ArabicFont.elMessiri, fontSize: 20),
              )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: daThird,
                  foregroundColor: daSecondary,
                  shape: LinearBorder(),
                  fixedSize: Size(200, 50)),
              onPressed: () {},
              icon: Icon(Icons.library_books),
              label: Text(
                'المكتبة',
                style: ArabicTextStyle(
                    arabicFont: ArabicFont.elMessiri, fontSize: 20),
              )),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
