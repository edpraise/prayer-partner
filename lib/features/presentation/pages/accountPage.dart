import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF206040),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: CircularProfileAvatar(
                  '',
                  child:  Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/1.jpg')),
                  borderColor: Color(0xFFFF8F00),
                  borderWidth: 0,
                  elevation: 2,
                  radius: 50,
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Tasun",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Prasad",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
            Text(
              "Premium",
              style: TextStyle(fontSize: 15, color: Color(0xFFFF8F00)),
            ),
            SizedBox(height: 20,),
            Container(
              child: Expanded(
                  child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: ListTile(
                      leading: Icon(Icons.person, color: Colors.white),
                      title: Text('Account',
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        color: Colors.grey,
                        height: 1,
                        width: MediaQuery.of(context).size.width / 9),
                  ),

                  // ListTile(
                  //   onTap: () {
                  //     Navigator.of(context).push(MaterialPageRoute(
                  //         builder: (context) => PersonalWallet()));
                  //   },
                  //   leading:
                  //       Icon(Icons.account_balance_wallet, color: Colors.white),
                  //   title: Text('Wallet',
                  //       style: TextStyle(color: Colors.white, fontSize: 15)),
                  //   trailing: Text("N5,500",
                  //       style: TextStyle(
                  //         fontSize: 15,
                  //         color: Colors.white,
                  //       )),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: Container(
                  //       color: Colors.grey,
                  //       height: 1,
                  //       width: MediaQuery.of(context).size.width / 9),
                  // ),
                  ListTile(
                    leading: Icon(Icons.notifications, color: Colors.white),
                    title: Text('Notifications',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        color: Colors.grey,
                        height: 1,
                        width: MediaQuery.of(context).size.width / 9),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings, color: Colors.white),
                    title: Text('Settings',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        color: Colors.grey,
                        height: 1,
                        width: MediaQuery.of(context).size.width / 9),
                  ),
                  ListTile(
                    leading: Icon(Icons.info, color: Colors.white),
                    title: Text('Help',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        color: Colors.grey,
                        height: 1,
                        width: MediaQuery.of(context).size.width / 9),
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app, color: Colors.white),
                    title: Text('Logout',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}