import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mashura/Home.dart';

void main() {
  runApp(const Mashura());
}

class Mashura extends StatelessWidget {
  const Mashura({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'مشورة',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'), // Arabic
      ],
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    );
  }
}
