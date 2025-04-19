import 'package:flutter/material.dart';
import 'package:flutter_app/profile.dart';
import 'package:flutter_app/report.dart';
import 'package:flutter_app/settings.dart';
import 'homepage.dart';

class BottomNavigationBarTask extends StatefulWidget {
  const BottomNavigationBarTask({super.key});

  @override
  State<BottomNavigationBarTask> createState() => _BottomNavigationBarTaskState();
}

class _BottomNavigationBarTaskState extends State<BottomNavigationBarTask> {
  int selectNavValue = 0;

  List pages = [
    HomePageTask(),
    ReportTask(),
    ProfileTask(),
    SettingsTask(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages.elementAt(selectNavValue)
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectNavValue,
        onTap: (value) {
          setState(() {
            selectNavValue = value;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.report), label: "Report"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),

    );
  }
}


