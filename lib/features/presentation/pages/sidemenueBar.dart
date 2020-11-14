import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
    String link = 'https://tv24africa.com/';
  Future<void> share(dynamic link, String title) async {
    await FlutterShare.share(
        title: 'Prayer Partner',
        text: title,
        linkUrl: link,
        chooserTitle: 'Share prayer partner with friends?');
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Container(
        decoration: BoxDecoration(
          color:  Color(0xFF13131D),
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
            color: Color(0xFF232A4E),
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
        child: GestureDetector(
          onTap: (){
            share(link, 'text');
          },
                  child: ListTile(
            
            title: Text('Recommend app', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
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