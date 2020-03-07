
import 'package:flutter/material.dart';
import 'package:fancy_on_boarding/fancy_on_boarding.dart';

void main() => runApp(MyApp());

final pageList = [
  PageModel(
      //color: const Color(0xFF5CBD87),
      color: const Color(0xFF34C374),
      heroAssetPath: 'assets/money.png',
      title: Container(
          //padding: EdgeInsets.fromLTRB(0, 0, 0, 300),
          child: Text('Free',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 45.0,
          ))),
      body: Container(
          //padding: EdgeInsets.fromLTRB(0, 300, 0, 0),
      child: Text('Our mission first and foremost is to serve you. That\'s why we choose to make our product free to our users.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ))),
      iconAssetPath: 'assets/key.png'),
  PageModel(
      color: const Color(0xFF59A7D2),
      heroAssetPath: 'assets/open.png',
      title: Text('Accessible',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 45.0,
          )),
      body: Text(
          'Our app is accessible to everyone. You don\'t need any expert knowledge',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          )),
      iconAssetPath: 'assets/key.png'),
  PageModel(
    color: const Color(0xFF41BEB9),
    heroAssetPath: 'assets/accurate.png',
    title: Text('Accurate',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.white,
          fontSize: 45.0,
        )),
    body: Text('Our app provides unseen accuracy and realiability.',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        )),
    iconAssetPath: 'assets/key.png',
  ),
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: MyApp2(),
      debugShowCheckedModeBanner:false,
      routes: <String, WidgetBuilder>{
        //'/': (BuildContext context) => new HomeScreen(),
        '/mainPage': (BuildContext context) => new Home(),
      },
    );
  }
}
//1234
/// This Widget is the main application widget.
class MyApp2 extends StatelessWidget {
  static const String _title = 'BlazeVision';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FancyOnBoarding(
        doneButtonText: "Done",
        skipButtonText: "Skip",
        pageList: pageList,
        onDoneButtonPressed: () =>
            Navigator.of(context).pushReplacementNamed('/mainPage'),

        onSkipButtonPressed: () =>
            Navigator.of(context).pushReplacementNamed('/mainPage'),

      ),
    );
  }
}
  class Home extends StatelessWidget {
  @override
  static const String _title = 'BlazeVision';
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //appBar: AppBar(title: const Text(_title)),
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            //          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/LaunchX Logo1.jpg'),
              Image.asset('assets/ExampleFireActivityMap.jpg'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <ListTile>[
                  ListTile(
                    title: const Text('1 Day'),
                    leading: Radio(
                      value: 24,
                      onChanged: (int f) {},
                    ),
                  ),
                  ListTile(
                    title: const Text('2 Days'),
                    leading: Radio(
                      value: 48,
                      onChanged: (int g) {},
                    ),
                  ),
                  ListTile(
                    title: const Text('1 Week'),
                    leading: Radio(
                      value: 168,
                      onChanged: (int g) {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

