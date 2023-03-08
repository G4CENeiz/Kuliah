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
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _startHeight;
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(20.0)))),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male, size: 80),
                            SizedBox(height: 8),
                            Text('MALE')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(20.0)))),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female, size: 80),
                            SizedBox(height: 8),
                            Text('FEMALE')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT'),
                    Text('cm'),
                    SliderExample(
                      sliderValue: 183,
                    ),
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}

class SliderExample extends StatefulWidget {
  double sliderValue;
  SliderExample({super.key, required this.sliderValue});

  @override
  State<SliderExample> createState() =>
      _SliderExampleState(currentSliderValue: sliderValue);
}

class _SliderExampleState extends State<SliderExample> {
  double currentSliderValue;
  _SliderExampleState({required this.currentSliderValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Slider(
        activeColor: Colors.blueGrey,
        inactiveColor: Colors.grey,
        value: currentSliderValue,
        min: 1,
        max: 300,
        label: currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            currentSliderValue = value;
          });
        },
      ),