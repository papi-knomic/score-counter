import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:score_keeper/shared/constants.dart';

class Basketball extends StatefulWidget {
  @override
  _BasketballState createState() => _BasketballState();
}

class _BasketballState extends State<Basketball> {
  int team1 = 0;
  int team2 = 0;

  int ft1 = 0;
  int ft2 = 0;

  int two1 = 0;
  int two2 = 0;

  int three1 = 0;
  int three2 = 0;

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
          children: [
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
                      '$ft1',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text('Free Throws'),
                    Text(
                      '$ft2',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      '$two1',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text('Two Points'),
                    Text(
                      '$two2',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      '$three1',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text('Three Points'),
                    Text(
                      '$three2',
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
                Column(
                  children: [
                    Text(
                      '$team1',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      teamname1,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FlatButton(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        height: 50,
                        minWidth: 150,
                        onPressed: () {
                          setState(() {
                            team1 = team1 + 1;
                            ft1 = ft1 + 1;
                            winner = '';
                          });
                        },
                        child: Text(
                          'Free Throw',
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        height: 50,
                        minWidth: 150,
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            team1 = team1 + 2;
                            two1 = two1 + 1;
                            winner = '';
                          });
                        },
                        child: Text(
                          '2 Points',
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        height: 50,
                        minWidth: 150,
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            team1 = team1 + 3;
                            three1 = three1 + 1;
                            winner = '';
                          });
                        },
                        child: Text(
                          '3 Points',
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        )),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '$team2',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      teamname2,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FlatButton(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        height: 50,
                        minWidth: 150,
                        onPressed: () {
                          setState(() {
                            team2 = team2 + 1;
                            ft2 = ft2 + 1;
                            winner = '';
                          });
                        },
                        child: Text(
                          'Free Throw',
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    FlatButton(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        height: 50,
                        minWidth: 150,
                        onPressed: () {
                          setState(() {
                            team2 = team2 + 2;
                            two2 = two2 + 1;
                            winner = '';
                          });
                        },
                        child: Text(
                          '2 Points',
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        height: 50,
                        minWidth: 150,
                        color: Colors.red,
                        onPressed: () {
                          setState(() {
                            team2 = team2 + 3;
                            three2 = three2 + 1;
                            winner = '';
                          });
                        },
                        child: Text(
                          '3 Points',
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton.icon(
                    color: Colors.grey[800],
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minWidth: 150,
                    icon: Icon(
                      Icons.refresh,
                    ),
                    onPressed: () {
                      setState(() {
                        team1 = 0;
                        team2 = 0;
                        winner = '';
                        control1.clear();
                        control2.clear();
                        teamname1 = '';
                        teamname2 = '';
                        ft1 = 0;
                        ft2 = 0;
                        three1 = 0;
                        three2 = 0;
                        two1 = 0;
                        two2 = 0;
                      });
                    },
                    label: Text(
                      'Reset',
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    )),
                SizedBox(
                  height: 10,
                ),
                FlatButton.icon(
                    color: Colors.green[800],
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minWidth: 150,
                    icon: Icon(
                      LineIcons.trophy,
                    ),
                    onPressed: () {
                      setState(() {
                        if (control1.text.isEmpty && control2.text.isEmpty) {
                          setState(() {
                            winner = 'Put team names';
                          });
                        } else {
                          if (team1 == team2) {
                            winner = 'It is a tie';
                          } else {
                            team1 > team2
                                ? winner = '$teamname1 is the winner'
                                : winner = '$teamname2 is the winner';
                          }
                        }
                      });
                    },
                    label: Text(
                      'Winner',
                      style: TextStyle(
                          color: Colors.grey[200],
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              winner,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
