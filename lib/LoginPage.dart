import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:mashura/Home.dart';
import 'package:mashura/HomeW.dart';
import 'package:mashura/daColor.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // Nettoyer le contrôleur lorsque le widget est disposé.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  List<String> patientEmails = [
    'nadia@gmail.com',
    // ajoutez plus d'emails de patients
  ];

  List<String> nurseEmails = [
    'nour@gmail.com',
    // ajoutez plus d'emails d'infirmières
  ];

  void navigateBasedOnEmail(String email) {
    if (patientEmails.contains(email)) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    } else if (nurseEmails.contains(email)) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeW()));
    } else {
      // Email non reconnu
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('لم يتم التعرف على الحساب')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: daPrimary,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 70,
                ),
                Container(
                  width: 200,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'Image/MashuraIcon.jpg',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'إستشارتك القانونية بين يديك!',
                    style: ArabicTextStyle(
                        arabicFont: ArabicFont.elMessiri,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return null;
                    }
                    return null;
                  },
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: 'أكتب إيميلك الإلكتروني',
                      labelText: 'الإيميل',
                      hintStyle: ArabicTextStyle(
                        arabicFont: ArabicFont.elMessiri,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(width: 2))),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return null;
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'أكتب كلمة السر الخاصة بك',
                      labelText: 'كلمة السر',
                      hintStyle: ArabicTextStyle(
                        arabicFont: ArabicFont.elMessiri,
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
                          borderSide: BorderSide(width: 2))),
                  obscureText: _isHidden,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: daSecondary,
                    foregroundColor: daPrimary,
                    fixedSize: Size(100, 50),
                    textStyle: ArabicTextStyle(
                        arabicFont: ArabicFont.elMessiri,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Utiliser l'email pour décider de la navigation
                      navigateBasedOnEmail(emailController.text);
                    } else {
                      // Gérer ici l'état d'erreur ou ne rien faire
                      print("إملئ المعلومات");
                    }
                  },
                  child: Text('دخول'),
                ),
                SizedBox(height: 100),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: daSecondary.withOpacity(0.8),
                    foregroundColor: daPrimary,
                    fixedSize: Size(180, 70),
                    textStyle: ArabicTextStyle(
                        arabicFont: ArabicFont.elMessiri,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                  child: Text('إنشاء حساب جديد'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  void showCustomSnackbarSignUp(BuildContext context) {
    final snackbar = SnackBar(
      content: Text(
        "لقد تم إنشاء حسابك بنجاح",
        style: ArabicTextStyle(arabicFont: ArabicFont.elMessiri),
      ),
      backgroundColor: daSecondary,
      duration: Duration(seconds: 3), // Snackbar duration of 3 seconds
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  String gender = '';

  Future<void> navigateBasedOnEmail(String email) async {
    if (gender == 'مستخدم') {
      await Future.delayed(Duration(seconds: 1), () {
        showCustomSnackbarSignUp(context);
      });
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    } else if (gender == 'محامي') {
      await Future.delayed(Duration(seconds: 1), () {
        showCustomSnackbarSignUp(context);
      });
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeW()));
    } else {
      // Email non reconnu
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('لم يتم التعرف على نوع الحساب')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: daPrimary,
      appBar: AppBar(
        title: Text('إنشاء حساب جديد'),
        backgroundColor: daSecondary,
        foregroundColor: daPrimary,
        titleTextStyle: ArabicTextStyle(
            arabicFont: ArabicFont.elMessiri,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: 'أدخل الإسم و اللقب',
                    labelText: 'الإسم الكامل',
                    hintStyle: ArabicTextStyle(
                      arabicFont: ArabicFont.elMessiri,
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
                  decoration: InputDecoration(
                    hintText: 'أدخل يوم ميلادك ي/ش/ع',
                    labelText: 'تاريخ الإزدياد',
                    hintStyle: ArabicTextStyle(
                      arabicFont: ArabicFont.elMessiri,
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
                  decoration: InputDecoration(
                    hintText: 'أدخل عنوان بريدك الإلكتروني',
                    labelText: 'البريد الإلكتروني',
                    hintStyle: ArabicTextStyle(
                      arabicFont: ArabicFont.elMessiri,
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
                  decoration: InputDecoration(
                    hintText: 'أدخل الموقع الخاص بك',
                    labelText: 'الموقع',
                    hintStyle: ArabicTextStyle(
                      arabicFont: ArabicFont.elMessiri,
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
                  decoration: InputDecoration(
                    hintText: 'أدخل رقم هاتفك النقال',
                    labelText: 'رقم الهاتف',
                    hintStyle: ArabicTextStyle(
                      arabicFont: ArabicFont.elMessiri,
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
                  decoration: InputDecoration(
                    hintText: 'أدخل كلمة المرور الخاصة بك',
                    labelText: 'كلمة المرور',
                    hintStyle: ArabicTextStyle(
                      arabicFont: ArabicFont.elMessiri,
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
                SizedBox(
                  width: 150,
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintStyle: ArabicTextStyle(
                        arabicFont: ArabicFont.elMessiri,
                      ),
                      labelText: 'نوع الحساب',
                      border: OutlineInputBorder(),
                    ),
                    items: ['مستخدم', 'محامي']
                        .map((label) => DropdownMenuItem(
                              child: Text(label),
                              value: label,
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: daSecondary,
                    foregroundColor: daPrimary,
                    fixedSize: Size(100, 50),
                    textStyle: ArabicTextStyle(
                        arabicFont: ArabicFont.elMessiri,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () async {
                    navigateBasedOnEmail(gender);
                  },
                  child: Text('تسحيل'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
