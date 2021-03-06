import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0, right: 15),
      child: Container(
        decoration: BoxDecoration(
          color:  Color(0xFF232A4E),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            fillColor: Colors.white,
           isDense: true,
            hintText: 'Search ',
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.search, color: Colors.grey, size: 30,),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 0,
                width: 0,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Icon(Icons.cancel_outlined, color: Colors.yellow)),
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),
          ),
        ),
      ),
    );
    // return Container(
    //   width: MediaQuery.of(context).size.width,
    //   child: Padding(
    //     padding: const EdgeInsets.only(left: 20.0, right: 40),
    //     child: Material(
    //       borderRadius: BorderRadius.circular(65),
    //       child: TextField(
    //         decoration: InputDecoration(
    //             fillColor: Colors.blueGrey,
    //             filled: true,
    //             border: InputBorder.none,
    //             focusedBorder: InputBorder.none,
    //             enabledBorder: InputBorder.none,
    //             errorBorder: InputBorder.none,
    //             disabledBorder: InputBorder.none,
    //             hintText: "Search",
    //             hintStyle: TextStyle(color: Colors.grey),
    //             prefixIcon: Icon(
    //               Icons.search,
    //               color: Colors.black,
    //             ),
    //             
    //       ),
    //     ),
    //   ),
    // );
  }
}
