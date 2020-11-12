import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('My Profile'), centerTitle: true,
          backgroundColor: Colors.cyan
        ),
        body: Center(
          child: Column(
              children: <Widget>[
                Picture(),
                Name(),
                Website(),
                RowOne(),
                RowTwo(),
              ]
          ),
        ),
      ),
    );
  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 100,
        backgroundImage: AssetImage('images/Made.jpg'),
      ),
      margin: const EdgeInsets.only(top: 40.0),
    );
  }
}

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Made Indra Putera Aryana',
        style: TextStyle(
          color: Colors.black, fontSize: 25,
        ),),
      margin: const EdgeInsets.only(top: 20.0),
    );
  }
}

class Website extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('https://elearning.undiksha.ac.id/',
        style: TextStyle(
          color: Colors.blue, fontSize: 20,
        ),),
    );
  }
}

class RowOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 20.0),
            child: Card(
              color: Colors.blueGrey,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.home, size: 45, color: Colors.black,
                      ),
                      Text(
                        'Seririt', style: TextStyle(color: Colors.black, fontSize: 18),
                      )
                    ]
                ),
              ),
            ),
          ),
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 20.0),
            child: Card(
              color: Colors.black12,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.school, size: 45, color: Colors.black,
                      ),
                      Text(
                        'Undiksha', style: TextStyle(color: Colors.black, fontSize: 18),
                      )
                    ]
                ),
              ),
            ),
          )
        ]
    );
  }
}

class RowTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 20.0),
            child: Card(
              color: Colors.white38,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.music_note, size: 45, color: Colors.black,
                      ),
                      Text(
                        'Genre', style: TextStyle(color: Colors.black, fontSize: 18),
                      )
                    ]
                ),
              ),
            ),
          ),
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 20.0),
            child: Card(
              color: Colors.white70,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.phone, size: 45, color: Colors.black,
                      ),
                      Text(
                        'Phone', style: TextStyle(color: Colors.black, fontSize: 18),
                      )
                    ]
                ),
              ),
            ),
          )
        ]
    );
  }
}

