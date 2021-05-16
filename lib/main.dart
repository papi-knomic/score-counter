import 'package:flutter/material.dart';
import 'package:score_keeper/screens/bball.dart';
import 'package:score_keeper/screens/football.dart';

void main() => runApp(MaterialApp(
      home: ScoreKeeper(),
      theme: ThemeData(fontFamily: 'Poppins'),
    ));

class ScoreKeeper extends StatefulWidget {
  @override
  _ScoreKeeperState createState() => _ScoreKeeperState();
}

class _ScoreKeeperState extends State<ScoreKeeper> {
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Score Counter'),
        backgroundColor: Colors.black,
      ),
      body: IndexedStack(
        children: [Basketball(), Football()],
        index: selectedPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        backgroundColor: Colors.black,
        currentIndex: selectedPage,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_basketball), title: Text('Basketball')),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer), title: Text('Football'))
        ],
        onTap: (int index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
    );
  }
}
