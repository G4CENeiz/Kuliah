import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blueAccent,
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.width * 0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.male),
                    Text("MALE")
                  ],
                ),
              ),
              SizedBox(width: 8,),
              Container(
                color: Colors.blueAccent,
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.width * 0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.female),
                    Text("FEMALE")
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8,),
          Container(
                color: Colors.blueAccent,
                width: (MediaQuery.of(context).size.width * 0.8) + 8,
                height: MediaQuery.of(context).size.width * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.female),
                    Text("FEMALE"),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}

class Box extends StatelessWidget {
const Box({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}
