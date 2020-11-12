import 'package:flutter/material.dart';
import 'package:prayer_partner/features/presentation/pages/sidemenueBar.dart';

class Connect extends StatefulWidget {
  @override
  _ConnectState createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF206240),
      appBar: AppBar(
        backgroundColor: Color(0xFF206240),
        title: Text('Testimonies'),
        centerTitle: true,
        elevation: 0.0,
      ),
      drawer: MainDrawer(),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
            children: [
              FittedBox(
                child: Card(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Text(
                              "How God healed my son",
                              style: TextStyle(fontSize: 20,color: Colors.black),
                            ),
                          ),
                          Text('Sarah Adam'),
                          Text('')
                        ],
                      ),
                      Container(
                        height: 160,
                        width: 200,
                       child: Image(image: AssetImage('assets/images/1.jpg')),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                child: Center(child: Text('Share your testimony')),
              )
            ],
        ),
          ),
//     
    );
  }
}
