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
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => editacc()));
                },
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => contract()));
                },
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => specialorder()));
                },
                icon: Icon(Icons.library_books),
                label: Text(
                  'المكتبة',
                  style: ArabicTextStyle(
                      arabicFont: ArabicFont.elMessiri, fontSize: 20),
                )),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(225, 60),
                  textStyle: ArabicTextStyle(
                      arabicFont: ArabicFont.avenirArabic,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                  backgroundColor: Colors.red.shade400,
                  foregroundColor: daThird),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/Login');
              },
              icon: Icon(
                Icons.logout,
                size: 30,
              ),
              label: Text(
                'تسجيل خروج',
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

class editacc extends StatefulWidget {
  const editacc({super.key});

  @override
  State<editacc> createState() => _editaccState();
}

class _editaccState extends State<editacc> {
  void _showCustomSnackbar(BuildContext context) {
    final snackbar = SnackBar(
      content: Text(
        "لقد تم تعديل حسابك ",
        style: ArabicTextStyle(arabicFont: ArabicFont.avenirArabic),
      ),
      backgroundColor: daSecondary,
      duration: Duration(seconds: 3), // Snackbar duration of 3 seconds
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  TextEditingController name = TextEditingController(text: ' ليلى  ');
  TextEditingController bith = TextEditingController(text: '2003/10/5');
  TextEditingController email =
      TextEditingController(text: 'lailaa.586@gmail.com');
  TextEditingController num = TextEditingController(text: '+213663589463');
  TextEditingController pass = TextEditingController(text: 'L@12154!');
  bool _isHidden = true;
  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('تعديل الحساب'),
        backgroundColor: daSecondary,
        foregroundColor: daPrimary,
        titleTextStyle: ArabicTextStyle(
            arabicFont: ArabicFont.avenirArabic,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: name,
              decoration: InputDecoration(
                hintText: 'أدخل الإسم و اللقب',
                labelText: 'الإسم الكامل',
                hintStyle: ArabicTextStyle(
                  arabicFont: ArabicFont.avenirArabic,
                ),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 2)),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: bith,
              decoration: InputDecoration(
                hintText: 'أدخل يوم ميلادك ي/ش/ع',
                labelText: 'تاريخ الإزدياد',
                hintStyle: ArabicTextStyle(
                  arabicFont: ArabicFont.avenirArabic,
                ),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 2)),
              ),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(height: 10),
            TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: 'أدخل عنوان بريدك الإلكتروني',
                labelText: 'البريد الإلكتروني',
                hintStyle: ArabicTextStyle(
                  arabicFont: ArabicFont.avenirArabic,
                ),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 2)),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            TextField(
              controller: num,
              decoration: InputDecoration(
                hintText: 'أدخل رقم هاتفك النقال',
                labelText: 'رقم الهاتف',
                hintStyle: ArabicTextStyle(
                  arabicFont: ArabicFont.avenirArabic,
                ),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 2)),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 10),
            TextField(
              controller: pass,
              decoration: InputDecoration(
                hintText: 'أدخل كلمة المرور الخاصة بك',
                labelText: 'كلمة المرور',
                hintStyle: ArabicTextStyle(
                  arabicFont: ArabicFont.avenirArabic,
                ),
                fillColor: Colors.white,
                filled: true,
                suffixIcon: IconButton(
                  icon: _isHidden
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  onPressed: _toggleVisibility,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 2,
                    )),
              ),
              obscureText: _isHidden,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: daSecondary,
                foregroundColor: Colors.white,
                fixedSize: Size(100, 50),
                textStyle: ArabicTextStyle(
                    arabicFont: ArabicFont.avenirArabic,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () async {
                _showCustomSnackbar(context);
                Navigator.pop(context);
              },
              child: Text('تعديل'),
            ),
          ],
        ),
      ),
    );
  }
}

class contract extends StatefulWidget {
  const contract({super.key});

  @override
  State<contract> createState() => _contractState();
}

class _contractState extends State<contract> {
  void _showCustomSnackbar(BuildContext context) {
    final snackbar = SnackBar(
      content: Text(
        "نشكركم على تعاقدك معنا، سوف نتواصل معكم في أقرب وقت",
        style: ArabicTextStyle(arabicFont: ArabicFont.avenirArabic),
      ),
      backgroundColor: daSecondary,
      duration: Duration(seconds: 3), // Snackbar duration of 3 seconds
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  bool _isBalanceVisible = false;
  String _balance = '****';

  TextEditingController _rip =
      TextEditingController(text: '00799999000473251372');
  final FocusNode _focusNode = FocusNode();

  void _fill(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(20),
          title: Text(
            "تعبئة الرصيد",
            style: ArabicTextStyle(
              color: daSecondary,
              arabicFont: ArabicFont.cairo,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SingleChildScrollView(
            child: IntrinsicHeight(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("من فضلك أرسل المبلغ الذي تريد تعبئته إلى هذا الحساب"),
                  SizedBox(height: 10),
                  TextField(
                    controller: _rip,
                    readOnly: true,
                    focusNode: _focusNode,
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: daSecondary)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 3, 43, 77),
                              width: 2)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                ],
              ),
            ),
          ),
          contentTextStyle: ArabicTextStyle(
            arabicFont: ArabicFont.cairo,
            color: daDark,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          actions: [
            TextButton(
              child: Text("تم"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('الدفع'),
        backgroundColor: daSecondary,
        foregroundColor: daPrimary,
        titleTextStyle: ArabicTextStyle(
            arabicFont: ArabicFont.avenirArabic,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Image.asset(
                "Image/balance.png",
                scale: 4,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Text(
                  'الرصيد الحالي:',
                  style: ArabicTextStyle(
                      arabicFont: ArabicFont.cairo,
                      fontSize: 20,
                      color: daSecondary,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  _isBalanceVisible ? '\1,000 دج' : _balance,
                  style: TextStyle(fontSize: 24, color: Colors.blue.shade900),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _isBalanceVisible = !_isBalanceVisible;
                      _balance = _isBalanceVisible ? '\$5,250' : '****';
                    });
                  },
                  child: Text(
                    _isBalanceVisible ? 'إخفاء الرصيد' : 'إظهار الرصيد',
                    style: ArabicTextStyle(
                        arabicFont: ArabicFont.cairo,
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: daThird,
                        foregroundColor: daSecondary,
                        shape: LinearBorder(),
                        fixedSize: Size(200, 100)),
                    onPressed: () => _fill(context),
                    icon: Icon(Icons.payment),
                    label: Text(
                      'تعبئة الرصيد',
                      style: ArabicTextStyle(
                          arabicFont: ArabicFont.elMessiri, fontSize: 20),
                    )),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class specialorder extends StatefulWidget {
  const specialorder({super.key});

  @override
  State<specialorder> createState() => _specialorderState();
}

class _specialorderState extends State<specialorder> {
  void _showSnackBar(Color color, BuildContext context, String message) {
    final snackBar = SnackBar(
      backgroundColor: color,
      content: Text(
        message,
        style: ArabicTextStyle(arabicFont: ArabicFont.avenirArabic),
      ),
      duration: Duration(seconds: 3), // Personnalisez la durée si nécessaire
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  TextEditingController _messageController = TextEditingController();

  List<String> kotobcover = [
    'Image/kotob/1.jpg',
    'Image/kotob/2.jpg',
    'Image/kotob/3.jpeg',
    'Image/kotob/4.jpeg',
    'Image/kotob/5.jpg',
    'Image/kotob/6.jpeg',
    'Image/kotob/7.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('المكتبة'),
          backgroundColor: daSecondary,
          foregroundColor: daPrimary,
          titleTextStyle: ArabicTextStyle(
              arabicFont: ArabicFont.avenirArabic,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: kotobcover.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 2,
                      child: GridTile(
                        child: Image.asset(
                          kotobcover[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                })));
  }
}
