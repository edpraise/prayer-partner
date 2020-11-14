import 'package:flutter/material.dart';

class CreateCard extends StatefulWidget {
  @override
  _CreateCardState createState() => _CreateCardState();
}

class _CreateCardState extends State<CreateCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF13131D),
        title: Text('Add your card '),
      ),
      body: SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height,
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: TextFormField(
    decoration: InputDecoration(
      border: InputBorder.none
    ),
    ),
  ),
  decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.contain,
            image: AssetImage("assets/images/bk.jpg",),
          ),
  ),
),
      ),
    );
  }
}