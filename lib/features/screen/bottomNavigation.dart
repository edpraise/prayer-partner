import 'package:flutter/material.dart';
import 'package:prayer_partner/features/presentation/pages/accountPage.dart';
import 'package:prayer_partner/features/presentation/pages/addTextPage.dart';
import 'package:prayer_partner/features/presentation/pages/connectPage.dart';
import 'package:prayer_partner/features/presentation/pages/homePage.dart';
import 'package:prayer_partner/features/presentation/pages/notificationPage.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentTabbedIndex = 0;
  HomePage homePage;
  AccountPage accountPage;
  NotifyPage notifyPage;
  AddScript addScript;
  Connect connect;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    accountPage = AccountPage();
    notifyPage = NotifyPage();
    addScript = AddScript();
    connect = Connect();
    pages = [homePage, connect,addScript, notifyPage, accountPage ];

    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
        backgroundColor: Color(0xFF206040),
          onTap: (int index) {
            setState(() {
              currentTabbedIndex = index;
              currentPage = pages[index];
            });
          },
          currentIndex: currentTabbedIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.now_widgets_outlined),
              // ignore: deprecated_member_use
              title: Text(".")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.signal_cellular_alt_sharp),
              // ignore: deprecated_member_use
              title: Text(".")
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.blueGrey,
                ),
              child: Icon(Icons.add)),
              // ignore: deprecated_member_use
              title: Text(".")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none),
              // ignore: deprecated_member_use
              title: Text(".")),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              // ignore: deprecated_member_use
              title: Text(".", )
            )
          ]),
      body: currentPage,
    );
  }
}
