import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:mashura/Worker/ended.dart';
import 'package:mashura/Worker/pending.dart';
import 'package:mashura/daColor.dart';
import 'package:table_calendar/table_calendar.dart';

class Workerhome extends StatefulWidget {
  const Workerhome({super.key});

  @override
  State<Workerhome> createState() => _WorkerhomeState();
}

class _WorkerhomeState extends State<Workerhome> {
  int aPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 10, 16),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            calendarFormat: CalendarFormat.month,
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            calendarBuilders: CalendarBuilders(
                // Customize calendar appearance
                ),
            headerStyle: HeaderStyle(
                // Customize header style
                ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 150), // Animation duration
                width: aPage == 0 ? 120 : 100, // Width changes based on state
                height: 50,
                curve: Curves.ease,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          (aPage == 0) ? daThird : daThird.withOpacity(0.6),
                      foregroundColor: daSecondary,
                      textStyle: ArabicTextStyle(
                          arabicFont: ArabicFont.elMessiri,
                          fontSize: 18,
                          fontWeight: (aPage == 0)
                              ? FontWeight.bold
                              : FontWeight.w400)),
                  onPressed: () {
                    setState(() {
                      aPage = 0;
                      _pageController.animateToPage(aPage,
                          duration: Duration(milliseconds: 250),
                          curve: Curves.ease);
                    });
                  },
                  child: Text('نشطة'),
                ),
              ),
              Container(
                height: 50,
                child: VerticalDivider(
                  // Divider between buttons
                  color: daThird,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 150), // Animation duration
                width: aPage == 1 ? 120 : 100, // Width changes based on state
                height: 50,
                curve: Curves.ease,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          (aPage == 1) ? daThird : daThird.withOpacity(0.8),
                      foregroundColor: daSecondary,
                      textStyle: ArabicTextStyle(
                          arabicFont: ArabicFont.elMessiri,
                          fontSize: 18,
                          fontWeight: (aPage == 1)
                              ? FontWeight.bold
                              : FontWeight.w400)),
                  onPressed: () {
                    setState(() {
                      aPage = 1;
                      _pageController.animateToPage(aPage,
                          duration: Duration(milliseconds: 250),
                          curve: Curves.ease);
                    });
                  },
                  child: Text('منتهية'),
                ),
              ),
            ],
          ),
          Container(
            height: 30,
            child: Divider(
              // Divider between buttons
              color: daThird,
              thickness: 1,
              indent: 50,
              endIndent: 50,
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  aPage = value;
                });
              },
              children: [pending(), Ended()],
            ),
          ),
        ],
      ),
    );
  }
}
