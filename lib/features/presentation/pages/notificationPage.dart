import 'package:flutter/material.dart';
import 'package:prayer_partner/features/presentation/pages/sidemenueBar.dart';

class NotifyPage extends StatefulWidget {
  @override
  _NotifyPageState createState() => _NotifyPageState();
}

class _NotifyPageState extends State<NotifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF206040),
      appBar: AppBar(
         backgroundColor:Color(0xFF206040),
         title: Text('Notifications'),
         elevation: 0.0,
         centerTitle: true,

      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('June 10, 2020',style: TextStyle(color: Colors.grey),),
                Text('3:13pm', style: TextStyle(color: Colors.grey),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('If you are a follower of Christ, you have a story to tell–a testimony of how God changed you from the inside out and impacted your life forever. Most likely, your story has not been based on your own personal successes, but on God leading you toward victory through Jesus Christ during every circumstance of your life.', style: TextStyle(color: Colors.white),),
          ),
          SizedBox(height: 10),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('June 10, 2020',style: TextStyle(color: Colors.grey),),
                Text('3:13pm', style: TextStyle(color: Colors.grey),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('If you are a follower of Christ, you have a story to tell–a testimony of how God changed you from the inside out and impacted your life forever. Most likely, your story has not been based on your own personal successes, but on God leading you toward victory through Jesus Christ during every circumstance of your life.', style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}