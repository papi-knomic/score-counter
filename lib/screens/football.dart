import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Football extends StatefulWidget {
  @override
  _FootballState createState() => _FootballState();
}

class _FootballState extends State<Football> {
  // score for both teams
  int score1 = 0;
  int score2 = 0;

  // Yellow cards
  int yCard1 = 0;
  int yCard2 = 0;

  // red cards
  int rCard1 = 0;
  int rCard2 = 0;

  //fouls
  int f1 = 0;
  int f2 = 0;

  //corners
  int c1 = 0;
  int c2 = 0;

  // possession
  int p1 = 0;
  int p2 = 0;

  //offsides
  int o1 = 0;
  int o2 = 0;

  String winner = '';
  String teamname1 = '';
  String teamname2 = '';
  final control1 = TextEditingController();
  final control2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: <Widget>[
            ExpansionTile(
              leading: Icon(LineIcons.tShirt),
              title: Text('Team Names'),
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Team 1',
                  ),
                  maxLength: 15,
                  controller: control1,
                  onChanged: (value) {
                    setState(() {
                      teamname1 = value;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'Team 2'),
                  maxLength: 15,
                  controller: control2,
                  onChanged: (value) {
                    setState(() {
                      teamname2 = value;
                    });
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text('Stats'),
              leading: Icon(Icons.stacked_bar_chart),
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      '$p1%',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text('Possession'),
                    Text(
                      '$p2%',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      '$f1',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text('Fouls'),
                    Text(
                      '$f1',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      '$yCard1',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      LineIcons.squareFull,
                      color: Colors.amber,
                    ),
                    Text(
                      '$yCard2',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      '$rCard1',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      LineIcons.squareFull,
                      color: Colors.red,
                    ),
                    Text(
                      '$rCard2',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      '$c1',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      LineIcons.flagCheckered,
                      color: Colors.black,
                    ),
                    Text(
                      '$c2',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      '$o1',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Icon(LineIcons.flagAlt, color: Colors.yellow),
                    Text(
                      '$o2',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  '$score1',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text('Score'),
                Text(
                  '$score2',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton.icon(
                    color: Colors.green,
                    onPressed: () {},
                    icon: Icon(Icons.sports_soccer_rounded),
                    label: Text('Goal')),
                FlatButton.icon(
                    onPressed: () {},
                    color: Colors.green,
                    icon: Icon(Icons.sports_soccer_rounded),
                    label: Text('Goal')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.sports_soccer_rounded),
                    label: Text('%')),
                FlatButton.icon(
                    onPressed: () {},
                    color: Colors.blue,
                    icon: Icon(Icons.sports_soccer_rounded),
                    label: Text('%')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.sports_soccer_rounded),
                    label: Text('Goal')),
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.sports_soccer_rounded),
                    label: Text('Goal')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.sports_soccer_rounded),
                    label: Text('Goal')),
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.sports_soccer_rounded),
                    label: Text('Goal')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.sports_soccer_rounded),
                    label: Text('Goal')),
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.sports_soccer_rounded),
                    label: Text('Goal')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.sports_soccer_rounded),
                    label: Text('Goal')),
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.sports_soccer_rounded),
                    label: Text('Goal')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.sports_soccer_rounded),
                    label: Text('Goal')),
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.sports_soccer_rounded),
                    label: Text('Goal')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
