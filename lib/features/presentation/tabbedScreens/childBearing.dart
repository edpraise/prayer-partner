import 'package:flutter/material.dart';

class ChildBearing extends StatefulWidget {
  @override
  _ChildBearingState createState() => _ChildBearingState();
}

class _ChildBearingState extends State<ChildBearing> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text('Title here'),
          Text('Revelations 12:1',style: TextStyle(fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("""
            A great sign appeared in heaven: a woman clothed with the sun,
             with the moon under her feet and a crown of twelve stars on her head. 2 She was pregnant and cried out in pain as she was about to give birth. 3 Then another sign appeared in heaven: an enormous red dragon with seven heads and ten horns and seven crowns on its heads. 4 Its tail swept a third of the stars out of the sky and flung them to the earth. The dragon stood in front of the woman who was about to give birth, so that it might devour her child the moment he was born. 5 She gave birth to a son, a male child, who “will rule all the nations with an iron scepter.”[a] And her child was snatched up to God and to his throne. 6 The woman fled into the wilderness to a place prepared
             for her by God, where she might be taken care of for 1,260 days.
            """),
          ),
          
        ],
      ),
    );
  }
}