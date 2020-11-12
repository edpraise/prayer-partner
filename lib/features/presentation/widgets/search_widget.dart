import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0, right: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(32),
        ),
        child: TextField(
          decoration: InputDecoration(
           isDense: true,
            hintText: 'Search ',
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.search, color: Colors.grey, size: 30,),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 0,
                width: 0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
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
