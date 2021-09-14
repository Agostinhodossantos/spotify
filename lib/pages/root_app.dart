import 'package:flutter/material.dart';
import 'package:spotify/theme/colors.dart';

class RootApp extends StatefulWidget {
  


  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getFooter() {

  List items = [
      Feather.home,
      Feather.book,
      Feather.search,
      Feather.settings,
  ];

  return Container(
    height: 80,
    decoration: BoxDecoration(color: black),
    child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(4, (index) {
          return IconButton(
          onPressed: () {
           setState(() {
             activeTab = index;
           });
          }, 
          icon: Icon(
            Icons.home, 
            color: white,
          ));
        })
      ),
    ),
  );
}
}

