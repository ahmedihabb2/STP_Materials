import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter =0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            setState(() {
              counter++;
            });
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("STP"),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              Text("$counter" ,
              style: TextStyle(
                fontSize: 16
              ),)
            ],
          ),
        ),
      ),
    );
  }
}

