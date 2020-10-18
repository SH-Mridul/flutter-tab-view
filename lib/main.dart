import 'package:MusicApp/pages/PageOne.dart';
import 'package:MusicApp/pages/PageTwo.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home : HomePage()
  ));


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs:[
              Tab(
                icon:Icon(Icons.home),
                text: 'Home',
              ),

              Tab(
                icon:Icon(Icons.message),
                text: 'Message',
              ),
            ]
          ),
        ),

        body: TabBarView(children: [
          PageOne(),
          PageTwo()
        ],),
      )
    );
  }
}
