import 'dart:async';
import 'package:flutter/material.dart';
import 'success.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
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


  final List<String> countries = ['United Kingdom', 'USA', 'France', 'Australia', 'New Zealand', 'Germany', 'Vietnam','India'
  ];

  String radioItem = 'Gender';
  String bRadioItem = 'Blood Group';

  Widget setupAlertDialoadContainer(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Container(
            color: Colors.white,
            height: 180.0, // Change as per your requirement
            width: 280.0, // Change as per your requirement
            child: ListView(
              children: <Widget>[
                RadioListTile(
                  groupValue: radioItem,
                  title: Text('Male'),
                  value: 'Male',
                  onChanged: (val) {
                    setState(() {
                      radioItem = val;
                    });
                  },
                ),
                RadioListTile(
                  groupValue: radioItem,
                  title: Text('Female'),
                  value: 'Female',
                  onChanged: (val) {
                    setState(() {
                      radioItem = val;
                    });
                  },
                ),
                RadioListTile(
                  groupValue: radioItem,
                  title: Text('Other'),
                  value: 'Other',
                  onChanged: (val) {
                    setState(() {
                      radioItem = val;
                    });
                  },
                ),
              ].toList(),
            ),
          ),
        ),
        Container(
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },child: Text("CANCEL",
                      style: TextStyle(color: Colors.black
                      )),),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },child: Text("SELECT",
                      style: TextStyle(color: Colors.orange
                      )),),
                )
              ],
            )
        ),
      ],
    );
  }


  Widget setBloodGroupContainer(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Container(
            color: Colors.white,
            height: 180.0, // Change as per your requirement
            width: 280.0, // Change as per your requirement
            child: ListView(
              children: <Widget>[
                RadioListTile(
                  groupValue: bRadioItem,
                  title: Text('A+'),
                  value: 'A+',
                  onChanged: (val) {
                    setState(() {
                      bRadioItem = val;
                    });
                  },
                ),
                RadioListTile(
                  groupValue: bRadioItem,
                  title: Text('A-'),
                  value: 'A-',
                  onChanged: (val) {
                    setState(() {
                      bRadioItem = val;
                    });
                  },
                ),
                RadioListTile(
                  groupValue: bRadioItem,
                  title: Text('B+'),
                  value: 'B+',
                  onChanged: (val) {
                    setState(() {
                      bRadioItem = val;
                    });
                  },
                ),
                RadioListTile(
                  groupValue: bRadioItem,
                  title: Text('B-'),
                  value: 'B-',
                  onChanged: (val) {
                    setState(() {
                      bRadioItem = val;
                    });
                  },
                ),
                RadioListTile(
                  groupValue: bRadioItem,
                  title: Text('AB+'),
                  value: 'AB+',
                  onChanged: (val) {
                    setState(() {
                      bRadioItem = val;
                    });
                  },
                ),
                RadioListTile(
                  groupValue: bRadioItem,
                  title: Text('AB-'),
                  value: 'AB-',
                  onChanged: (val) {
                    setState(() {
                      bRadioItem = val;
                    });
                  },
                ),
                RadioListTile(
                  groupValue: bRadioItem,
                  title: Text('O+'),
                  value: 'O+',
                  onChanged: (val) {
                    setState(() {
                      bRadioItem = val;
                    });
                  },
                ),
                RadioListTile(
                  groupValue: bRadioItem,
                  title: Text('O-'),
                  value: 'O-',
                  onChanged: (val) {
                    setState(() {
                      bRadioItem = val;
                    });
                  },
                ),
              ].toList(),
            ),
          ),
        ),
        Container(
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },child: Text("CANCEL",
                      style: TextStyle(color: Colors.black
                      )),),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },child: Text("SELECT",
                      style: TextStyle(color: Colors.orange
                      )),),
                )
              ],
            )
        ),
      ],
    );
  }



  final List<ActorFilterEntry> _cast = <ActorFilterEntry>[
    const ActorFilterEntry('Cough', 'CO'),
    const ActorFilterEntry('Headache', 'HD'),
    const ActorFilterEntry('Breathleness', 'BR'),
    const ActorFilterEntry('Sweating', 'ST'),
    const ActorFilterEntry('Fever', 'FE'),
    const ActorFilterEntry('Body Ache', 'BA'),
    const ActorFilterEntry('Chest Pain', 'CP'),
    const ActorFilterEntry('Heart Burn', 'HB'),
    const ActorFilterEntry('Nausea', 'NU'),
    const ActorFilterEntry('Dizziness', 'DI'),
    const ActorFilterEntry('Other', 'OT'),
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


  Widget setupAllergiesContainer(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Container(
            color: Colors.white,
            height: 180.0, // Change as per your requirement
            width: 280.0, // Change as per your requirement
            child: ListView(
              children: <Widget>[
                Wrap(
                  children: actorWidgets.toList(),
                ),
              ].toList(),
            ),
          ),
        ),
        Container(
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },child: Text("CANCEL",
                      style: TextStyle(color: Colors.black
                      )),),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },child: Text("ADD",
                      style: TextStyle(color: Colors.orange
                      )),),
                )
              ],
            )
        ),
      ],
    );
  }



  final List<ActorFilterEntry> _castt = <ActorFilterEntry>[
    const ActorFilterEntry('Cough', 'CO'),
    const ActorFilterEntry('Headache', 'HD'),
    const ActorFilterEntry('Breathleness', 'BR'),
    const ActorFilterEntry('Sweating', 'ST'),
    const ActorFilterEntry('Fever', 'FE'),
    const ActorFilterEntry('Body Ache', 'BA'),
    const ActorFilterEntry('Chest Pain', 'CP'),
    const ActorFilterEntry('Heart Burn', 'HB'),
    const ActorFilterEntry('Nausea', 'NU'),
    const ActorFilterEntry('Dizziness', 'DI'),
    const ActorFilterEntry('Other', 'OT'),
  ];
  List<String> _filterss = <String>[];

  Iterable<Widget> get actorWidgetss sync* {
    for (ActorFilterEntry actor in _castt) {
      yield Padding(
        padding: const EdgeInsets.all(4.0),
        child: FilterChip(
          avatar: CircleAvatar(child: Text(actor.initials)),
          label: Text(actor.name),
          selected: _filterss.contains(actor.name),
          onSelected: (bool value) {
            setState(() {
              if (value) {
                _filterss.add(actor.name);
              } else {
                _filterss.removeWhere((String name) {
                  return name == actor.name;
                });
              }
            });
          },
        ),
      );
    }
  }


  Widget setupComorbidContainer(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Container(
            color: Colors.white,
            height: 180.0, // Change as per your requirement
            width: 280.0, // Change as per your requirement
            child: ListView(
              children: <Widget>[
                Wrap(
                  children: actorWidgetss.toList(),
                ),
              ].toList(),
            ),
          ),
        ),
        Container(
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },child: Text("CANCEL",
                      style: TextStyle(color: Colors.black
                      )),),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },child: Text("ADD",
                      style: TextStyle(color: Colors.orange
                      )),),
                )
              ],
            )
        ),
      ],
    );
  }




  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final dateController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: new Text("Detail!!"), backgroundColor: Colors.black),
        body: SingleChildScrollView(
          child: Container(
            child: Form(
              key: formKey,
              child: new Column(
                children: <Widget>[
                  Container(
                    width: 400,
                    color: Colors.lightBlue,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 250,
                          width: 302,
                          padding: EdgeInsets.fromLTRB(0.0, 115.0, 135.0, 0.0),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomCenter,
                                colors: [ Colors.orange, Colors.orange]),
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                          ),
                        ),
                        Container(
                          height: 190,
                          padding: EdgeInsets.fromLTRB(210.0, 95.0, 0.0, 0.0),
                          child: Center(
                            child: Image.asset("assets/images/user.png"),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(24.0, 75.0, 135.0, 0.0),
                          child: Text(
                              'Tell us  about',
                              style: TextStyle(
                                  fontSize: 23.0, fontWeight: FontWeight.bold, color: Colors.white
                              )
                          ),

                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(24.0, 115.0, 135.0, 0.0),
                          child: Text(
                              'yourself.',
                              style: TextStyle(
                                  fontSize: 23.0, fontWeight: FontWeight.bold, color: Colors.white
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 392,
                    color: Colors.lightBlue,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 70.0, left: 33.0, right: 220.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                cursorColor: Colors.white,
                                validator: (value){
                                  if(value.isEmpty){
                                    return 'Required Field';
                                  }else{
                                    return null;
                                  }
                                },
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: 'First Name',
                                  hintStyle: TextStyle(
                                      color: Colors.white
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 70.0, left: 220.0, right: 33.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                cursorColor: Colors.white,
                                validator: (value){
                                  if(value.isEmpty){
                                    return 'Required Field';
                                  }else{
                                    return null;
                                  }
                                },
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: 'Last Name',
                                  hintStyle: TextStyle(
                                      color: Colors.white
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 392,
                    color: Colors.lightBlue,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 24.0, left: 33.0, right: 220.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                cursorColor: Colors.white,
                                validator: (value){
                                  if(value.isEmpty){
                                    return 'Required Field';
                                  }else{
                                    return null;
                                  }
                                },
                                readOnly: true,
                                controller: dateController,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: 'Date of Birth',
                                  hintStyle: TextStyle(
                                      color: Colors.white
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)
                                  ),
                                ),
                                onTap: () async {
                                  var date =  await showDatePicker(
                                      context: context,
                                      initialDate:DateTime.now(),
                                      firstDate:DateTime(1900),
                                      lastDate: DateTime(2100));
                                  dateController.text = date.toString().substring(0,10);
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 24.0, left: 220.0, right: 33.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                cursorColor: Colors.white,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: '$radioItem',
                                  hintStyle: TextStyle(
                                      color: Colors.white
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)
                                  ),
                                ),
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Center(
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(0.0, 14.0, 0.0, 0.0),
                                              child: Text('SELECT GENDER',
                                                textAlign: TextAlign.center,style: TextStyle(color: Colors.blue),),
                                            ),color: Colors.white,),
                                        ),
                                        content: setupAlertDialoadContainer(context),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(30.0))),
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 392,
                    color: Colors.lightBlue,
                    padding: EdgeInsets.only(top: 24.0, left: 33.0, right: 220.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          cursorColor: Colors.white,
                          validator: (value){
                            if(value.isEmpty){
                              return 'Required Field';
                            } if(value.length<6){
                              return 'Please enter valid number';
                            }
                            else{
                              return null;
                            }
                          },
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Pincode',
                            hintStyle: TextStyle(
                                color: Colors.white
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 392,
                    color: Colors.lightBlue,
                    padding: EdgeInsets.only(top: 24.0, left: 33.0, right: 33.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          cursorColor: Colors.white,
                          validator: (value){
                            if(value.isEmpty){
                              return 'Required Field';
                            }
                            if(value.length<10){
                              return 'Please enter valid number';
                            }
                            else{
                              return null;
                            }
                          },
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Emergency Contact Number',
                            hintStyle: TextStyle(
                                color: Colors.white
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 392,
                    color: Colors.lightBlue,
                    padding: EdgeInsets.only(top: 24.0, left: 33.0, right: 220.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: '$bRadioItem',
                            hintStyle: TextStyle(
                                color: Colors.white
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)
                            ),
                          ),
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Center(
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(0.0, 14.0, 0.0, 0.0),
                                        child: Text('BLOOD GROUP',
                                          textAlign: TextAlign.center,style: TextStyle(color: Colors.blue),),
                                      ),color: Colors.white,),
                                  ),
                                  content: setBloodGroupContainer(context),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    color: Colors.lightBlue,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(34.0, 30.0, 0.0, 0.0),
                          child: Text(
                              'Allergies',
                              style: TextStyle(
                                  fontSize: 15.0,  color: Colors.white
                              )
                          ),

                        ),
                        Container(
                          height: 75.0,
                          padding: EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 10.0),
                          width: 340.0,
                          child: FloatingActionButton(
                            child: Container(
                              width: 60,
                              height: 60,
                              child: Icon(Icons.add),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(colors: [Colors.lightBlue, Colors.blue])),
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Center(
                                      child: Container(
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(0.0, 14.0, 0.0, 0.0),
                                          child: Text(' Add Allergies',
                                            textAlign: TextAlign.center,style: TextStyle(color: Colors.blue),),
                                        ),color: Colors.white,),
                                    ),
                                    content: setupAllergiesContainer(context),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                                  );
                                },
                              );
                            },

                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 60.0, left: 33.0, right: 33.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                cursorColor: Colors.white,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: '${_filters.join(', ')}',
                                  hintStyle: TextStyle(
                                      color: Colors.white
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)
                                  ),
                                ),
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    color: Colors.lightBlue,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(34.0, 30.0, 0.0, 0.0),
                          child: Text(
                              'Comorbidities',
                              style: TextStyle(
                                  fontSize: 15.0,  color: Colors.white
                              )
                          ),

                        ),
                        Container(
                          height: 75.0,
                          padding: EdgeInsets.fromLTRB(50.0, 20.0, 0.0, 10.0),
                          width: 340.0,
                          child: FloatingActionButton(
                            child: Container(
                              width: 60,
                              height: 60,
                              child: Icon(Icons.add),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(colors: [Colors.lightBlue, Colors.blue])),
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Center(
                                      child: Container(
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(0.0, 14.0, 0.0, 0.0),
                                          child: Text('Add Comorbidities',
                                            textAlign: TextAlign.center,style: TextStyle(color: Colors.blue),),
                                        ),color: Colors.white,),
                                    ),
                                    content: setupComorbidContainer(context),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                                  );
                                },
                              );
                            },

                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 70.0, left: 33.0, right: 33.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                cursorColor: Colors.white,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: '${_filterss.join(', ')}',
                                  hintStyle: TextStyle(
                                      color: Colors.white
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)
                                  ),
                                ),
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 395,
                    padding: EdgeInsets.fromLTRB(0.0, 115.0, 35.0, 0.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [ Colors.lightBlue, Colors.lightBlue]),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                    ),
                  ),
                  Container(
                    width: 392,
                    color: Colors.white,
                    child: Stack(
                        children: <Widget>[
                          SizedBox(height: 80.0),
                          Container(
                            height: 75.0,
                            padding: EdgeInsets.fromLTRB(50.0, 20.0, 0.0, 10.0),
                            width: 340.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(primary: Colors.lightBlue,shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),),

                              onPressed: () {
                                if(formKey.currentState.validate()){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                    return Success();
                                  }));
                                }
                                else{
                                  print("Try Again");
                                }
                              },
                              child: Text("Create Profile", style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        ]
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