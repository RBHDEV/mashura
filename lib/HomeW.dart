import 'package:flutter/material.dart';
import 'package:mashura/Worker/WorkerChat.dart';
import 'package:mashura/Worker/WorkerHome.dart';
import 'package:mashura/Worker/WorkerSettings.dart';
import 'package:mashura/daColor.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeW extends StatefulWidget {
  const HomeW({super.key});

  @override
  State<HomeW> createState() => _HomeWState();
}

class _HomeWState extends State<HomeW> {
  int tab = 0;

  final List<Widget> _pages = [Workerhome(), WorkerChat(), WorkerSettings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: daSecondary,
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('Image/MashuraIconZoomed.jpg')),
        ),
        title: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              prefixIconColor: daDark,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                      BorderSide(width: 2, color: Colors.grey.shade200)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                      BorderSide(width: 3, color: Colors.grey.shade200)),
              fillColor: daThird,
              filled: true,
              constraints: BoxConstraints.expand(height: 45, width: 250)),
        ),
        actions: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  fixedSize: Size(75, 50),
                  padding: EdgeInsets.only(right: 0),
                  backgroundColor: daThird,
                  foregroundColor: daDark),
              onPressed: () {},
              child: Icon(
                Icons.person,
                size: 40,
              )),
        ],
      ),
      body: IndexedStack(
        index: tab,
        children: _pages,
      ),
      bottomNavigationBar: GNav(
          tabBackgroundColor: daThird.withOpacity(0.5),
          color: daDark,
          backgroundColor: daPrimary,
          gap: 4,
          onTabChange: (value) {
            setState(() {
              tab = value;
            });
          },
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'الرئيسية',
            ),
            GButton(
              icon: Icons.chat,
              text: 'الدردشة',
            ),
            GButton(
              icon: Icons.settings,
              text: 'الإعدادات',
            )
          ]),
    );
  }
}
