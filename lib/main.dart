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
  int _fateCount = 0;
  int _honorCount = 0;
  int _conflictCount = 0;
  // int _militaryCount = 0;
  // int _politicalCount = 0;

  void _incrementFateCounter() {
    setState(() {
      _fateCount++;
    });
  }

  void _decrementFateCounter() {
    setState(() {
      _fateCount--;
    });
  }

  void _incrementHonorCounter() {
    setState(() {
      _honorCount++;
    });
  }

  void _decrementHonorCounter() {
    setState(() {
      _honorCount--;
    });
  }

  void _incrementConflictCounter() {
    setState(() {
      _conflictCount++;
    });
  }

  void _decrementConflictCounter() {
    setState(() {
      _conflictCount--;
    });
  }

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
          constraints: BoxConstraints.expand(),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: _fateCounter(),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: _honorCounter(),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: _conflictCounter(),
              ),
            ],
          )),
    );
  }

  // Widget _statusButtons() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
  //     children: <Widget>[_firstPlayerButton(), _imperialFavorButton()],
  //   );
  // }

  // Widget _firstPlayerButton() {
  //   return RaisedButton(
  //     elevation: 5,
  //     onPressed: () {},
  //     color: Colors.blue,
  //     textColor: Colors.white,
  //     child: Text(
  //       'First Player',
  //       style: TextStyle(fontSize: 24),
  //     ),
  //   );
  // }

  // Widget _imperialFavorButton() {
  //   return RaisedButton(
  //     elevation: 5,
  //     onPressed: () {},
  //     color: Colors.blue,
  //     textColor: Colors.white,
  //     child: Text(
  //       'Imperial Favor',
  //       style: TextStyle(fontSize: 24),
  //     ),
  //   );
  // }

  // Widget _resourceButtons() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //     children: <Widget>[_fateButton(), _honorButton()],
  //   );
  // }

  // Widget _statusCounters() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.stretch,
  //     children: <Widget>[_fateCounter(), _honorCounter(), _conflictCounter()],
  //   );
  // }

  Widget _fateCounter() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.pinkAccent,
            child: Align(
              alignment: Alignment(-0.5, 0),
              child: IconButton(
                onPressed: null,
                icon: Icon(
                  FiveRingsDB.unique,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.pinkAccent,
            child: IconButton(
              onPressed: () {
                _decrementFateCounter();
              },
              icon: Icon(
                Icons.remove_circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment(0, 0),
            color: Colors.pinkAccent,
            child: Text(
              _fateCount.toString(),
              style: TextStyle(
                fontSize: 31,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.pinkAccent,
            child: IconButton(
              onPressed: () {
                _incrementFateCounter();
              },
              icon: Icon(
                Icons.add_circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _honorCounter() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.orange,
            child: Align(
              alignment: Alignment(-0.5, 0),
              child: IconButton(
                onPressed: null,
                icon: Icon(
                  FiveRingsDB.element_all,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.orange,
            child: IconButton(
              onPressed: () {
                _decrementHonorCounter();
              },
              icon: Icon(
                Icons.remove_circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment(0, 0),
            color: Colors.orange,
            child: Text(
              _honorCount.toString(),
              style: TextStyle(
                fontSize: 31,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.orange,
            child: IconButton(
              onPressed: () {
                _incrementHonorCounter();
              },
              icon: Icon(
                Icons.add_circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _conflictCounter() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.red,
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    FiveRingsDB.conflict_military,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    FiveRingsDB.conflict_political,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
            child: IconButton(
              onPressed: () {
                _decrementConflictCounter();
              },
              icon: Icon(
                Icons.remove_circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment(0, 0),
            color: Colors.red,
            child: Text(
              _conflictCount.toString(),
              style: TextStyle(
                fontSize: 31,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
            child: IconButton(
              onPressed: () {
                _incrementConflictCounter();
              },
              icon: Icon(
                Icons.add_circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Widget _conflictButtons() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //     children: <Widget>[_militaryButton(), _politicalButton()],
  //   );
  // }

  // Widget _counterButtons() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //     children: <Widget>[
  //       _fateButton(),
  //       _honorButton(),
  //       _militaryButton(),
  //       _politicalButton()
  //     ],
  //   );
  // }

  // Widget _fateButton() {
  //   return ButtonTheme(
  //     minWidth: 150,
  //     height: 150,
  //     child: RaisedButton(
  //       onPressed: () {},
  //       shape: CircleBorder(),
  //       elevation: 20,
  //       color: Colors.pinkAccent,
  //       textColor: Colors.white,
  //       padding: EdgeInsets.all(10),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: <Widget>[
  //           Icon(
  //             FiveRingsDB.unique,
  //             size: 50,
  //           ),
  //           Text(
  //             _fateCount.toString(),
  //             style: TextStyle(fontSize: 45),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget _honorButton() {
  //   return ButtonTheme(
  //     minWidth: 150,
  //     height: 150,
  //     child: RaisedButton(
  //       onPressed: () {},
  //       shape: CircleBorder(),
  //       elevation: 20,
  //       color: Colors.orange,
  //       textColor: Colors.white,
  //       padding: EdgeInsets.all(10),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: <Widget>[
  //           Icon(
  //             FiveRingsDB.element_all,
  //             size: 50,
  //           ),
  //           Text(
  //             _honorCount.toString(),
  //             style: TextStyle(fontSize: 45),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget _militaryButton() {
  //   return ButtonTheme(
  //     minWidth: 150,
  //     height: 150,
  //     child: RaisedButton(
  //       onPressed: () {},
  //       shape: CircleBorder(),
  //       elevation: 20,
  //       color: Colors.red,
  //       textColor: Colors.white,
  //       padding: EdgeInsets.all(10),
  //       child: Column(
  //         children: <Widget>[
  //           Transform(
  //             transform: Matrix4.identity()..translate(-7.0),
  //             child: Icon(
  //               FiveRingsDB.conflict_military,
  //               size: 50,
  //             ),
  //           ),
  //           Text(
  //             _militaryCount.toString(),
  //             style: TextStyle(fontSize: 45),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget _politicalButton() {
  //   return ButtonTheme(
  //     minWidth: 150,
  //     height: 150,
  //     child: RaisedButton(
  //       onPressed: () {},
  //       shape: CircleBorder(),
  //       elevation: 20,
  //       color: Colors.blue,
  //       textColor: Colors.white,
  //       padding: EdgeInsets.all(10),
  //       child: Column(
  //         children: <Widget>[
  //           Transform(
  //             transform: Matrix4.identity()..translate(-12.0),
  //             child: Icon(
  //               FiveRingsDB.conflict_political,
  //               size: 50,
  //             ),
  //           ),
  //           Text(
  //             _politicalCount.toString(),
  //             style: TextStyle(fontSize: 45),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Dialog resourceDialog = Dialog(
  //   child: Container(
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: <Widget>[
  //         FlatButton.icon(
  //           onPressed: () {},
  //           icon: Icon(Icons.remove),
  //           label: Text('Remove'),
  //         ),
  //         Expanded(
  //           child: Text(''),
  //         ),
  //         FlatButton.icon(
  //             onPressed: () {}, icon: Icon(Icons.add), label: Text('')),
  //       ],
  //     ),
  //   ),
  // );
}
