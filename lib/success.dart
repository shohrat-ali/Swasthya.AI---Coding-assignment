import 'dart:async';
import 'package:flutter/material.dart';
import 'success.dart';


void main() => runApp(Success());
class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {


  final List<ActorFilterEntry> _cast = <ActorFilterEntry>[
    const ActorFilterEntry('Aaron Burr', 'AB'),
    const ActorFilterEntry('Alexander Hamilton', 'AH'),
    const ActorFilterEntry('Eliza Hamilton', 'EH'),
    const ActorFilterEntry('James Madison', 'JM'),
  ];
  List<String> _filters = <String>[];

  Iterable<Widget> get actorWidgets sync* {
    for (ActorFilterEntry actor in _cast) {
      yield Padding(
        padding: const EdgeInsets.all(4.0),
        child: FilterChip(
          avatar: CircleAvatar(child: Text(actor.initials)),
          label: Text(actor.name),
          selected: _filters.contains(actor.name),
          onSelected: (bool value) {
            setState(() {
              if (value) {
                _filters.add(actor.name);
              } else {
                _filters.removeWhere((String name) {
                  return name == actor.name;
                });
              }
            });
          },
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: new Text("Detail!!"), backgroundColor: Colors.black),
        body: SingleChildScrollView(
          child: Container(
            child: Form(
              child: new Column(
                children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 550,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height: 300,
                                width: 350,
                                padding: EdgeInsets.fromLTRB(0.0, 115.0, 135.0, 0.0),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [ Colors.white70,Colors.lightBlue, Colors.lightBlue]),
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                                ),
                              ),
                              Container(
                                height: 380,
                                padding: EdgeInsets.fromLTRB(30.0, 215.0, 25.0, 0.0),
                                child: Center(
                                  child: Image.asset("assets/images/useri.png"),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0.0, 325.0, 0.0, 0.0),
                                child: Center(
                                  child: Text(
                                      'Welcome',
                                      style: TextStyle(
                                          fontSize: 23.0, fontWeight: FontWeight.bold, color: Colors.black
                                      )
                                  ),
                                ),

                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 80.0),
                  Container(
                    height: 45.0,
                    width: 300.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.lightBlue,shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),),

                      onPressed: () {
                      },
                      child: Text("Let Get Started", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}


class ActorFilterEntry {
  const ActorFilterEntry(this.name, this.initials);
  final String name;
  final String initials;
}