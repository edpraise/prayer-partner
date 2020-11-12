import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF206040),
        ),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Center(
                  child: CircularProfileAvatar(
                   '',
                    child: Image(image: AssetImage('assets/images/1.jpg')),
                    // borderColor: Color(0xFFFF8F00),
                    borderWidth: 0,
                    elevation: 2,
                    radius: 50,
                  ),
                ),
              ),
              SizedBox(height: 10),
            Text('Musa Mohammed', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            Text('Subscriber', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
            SizedBox(height:10),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey
          ),
        ),
        SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.only(top:12.0, left: 10),
        child: ListTile(
          title: Text('Home', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          ),
      ),
        Padding(
        padding: const EdgeInsets.only( left: 10),
        child: ListTile(
          title: Text('Favourite Cards', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          ),
      ),
        Padding(
        padding: const EdgeInsets.only( left: 10),
        child: ListTile(
          title: Text('Recommend app', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          ),
      ),
        Padding(
        padding: const EdgeInsets.only( left: 10),
        child: ListTile(
          title: Text('Support', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          ),
      ),
      

          ],
        ),
      )
    );
  }
}