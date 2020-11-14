import 'package:flutter/material.dart';
import 'package:prayer_partner/features/presentation/pages/accountPage.dart';
import 'package:prayer_partner/features/presentation/pages/addTextPage.dart';
import 'package:prayer_partner/features/presentation/pages/createCard.dart';
import 'package:prayer_partner/features/presentation/pages/homePage.dart';
import 'package:prayer_partner/features/presentation/pages/notificationPage.dart';
import 'package:prayer_partner/features/presentation/pages/testimoniesPage.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentTab = 0;
  final List<Widget> pages = [
    HomePage(),
    AccountPage(),
    NotifyPage(),
    AddScript(),
    Connect(),
  ];

  Widget currentScreen = HomePage();

  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.transparent,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom:10.0),
        child: FloatingActionButton(
          elevation: 10.0,
          
          onPressed: (){
             Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateCard()));
          },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // circular shape
                  gradient: LinearGradient(
                    // end: Alignment.center,
                    begin: Alignment.center,

                    colors: [
                      Color(0xFF3F5668),
                      Color(0XFFe12160),
                      Colors.red,
                    ],
                  ),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF13131D),
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = HomePage();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.now_widgets_outlined,
                        color: currentTab == 0 ? Colors.white : Colors.grey),
                    Text('.',
                        style: TextStyle(
                            color:
                                currentTab == 0 ? Colors.white : Colors.black)),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = Connect();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.signal_cellular_alt_sharp,
                        color: currentTab == 1 ? Colors.white : Colors.grey),
                    Text('.',
                        style: TextStyle(
                            color:
                                currentTab == 1 ? Colors.white : Colors.black)),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = NotifyPage();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.notifications_none,
                        color: currentTab == 2 ? Colors.white : Colors.grey),
                    Text('.',
                        style: TextStyle(
                            color:
                                currentTab == 2 ? Colors.white : Colors.black)),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = AccountPage();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person,
                        color: currentTab == 3 ? Colors.white : Colors.grey),
                    Text('.',
                        style: TextStyle(
                            color:
                                currentTab == 3 ? Colors.white : Colors.black )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
