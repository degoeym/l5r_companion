import 'package:flutter/material.dart';
import 'five_rings_d_b_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue),
      home: MyHomePage(title: 'L5R Companion App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _fateCount = 100;
  int _honorCount = 100;
  int _militaryCount = 100;
  int _politicalCount = 100;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/Shiro_no_Yojin.jpeg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: _statusButtons(),
            ),
            Expanded(
              child: Text(''),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: _counterButtons(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _statusButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[_firstPlayerButton(), _imperialFavorButton()],
    );
  }

  Widget _firstPlayerButton() {
    return RaisedButton(
      elevation: 5,
      onPressed: () {},
      color: Colors.blue,
      textColor: Colors.white,
      child: Text(
        'First Player',
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  Widget _imperialFavorButton() {
    return RaisedButton(
      elevation: 5,
      onPressed: () {},
      color: Colors.blue,
      textColor: Colors.white,
      child: Text(
        'Imperial Favor',
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  Widget _counterButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _fateButton(),
        _honorButton(),
        _militaryButton(),
        _politicalButton()
      ],
    );
  }

  Widget _fateButton() {
    return RaisedButton(
      onPressed: () {},
      shape: CircleBorder(),
      elevation: 20,
      color: Colors.pinkAccent,
      textColor: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            FiveRingsDB.unique,
            size: 30,
          ),
          Text(
            _fateCount.toString(),
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }

  Widget _honorButton() {
    return RaisedButton(
      onPressed: () {},
      shape: CircleBorder(),
      elevation: 20,
      color: Colors.orange,
      textColor: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            FiveRingsDB.element_all,
            size: 30,
          ),
          Text(
            _honorCount.toString(),
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }

  Widget _militaryButton() {
    return RaisedButton(
      onPressed: () {},
      shape: CircleBorder(),
      elevation: 20,
      color: Colors.red,
      textColor: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Transform(
            transform: Matrix4.identity()..translate(-4.5),
            child: Icon(
              FiveRingsDB.conflict_military,
              size: 30,
            ),
          ),
          Text(
            _militaryCount.toString(),
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }

  Widget _politicalButton() {
    return RaisedButton(
      onPressed: () {},
      shape: CircleBorder(),
      elevation: 20,
      color: Colors.blue,
      textColor: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Transform(
            transform: Matrix4.identity()..translate(-7.5),
            child: Icon(
              FiveRingsDB.conflict_political,
              size: 30,
            ),
          ),
          Text(
            _politicalCount.toString(),
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}
