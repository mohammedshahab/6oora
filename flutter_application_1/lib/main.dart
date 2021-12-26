import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mohammed',
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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Colors.blue[700],
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text(
            "SOCCERBOARD",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            width: 200,
            height: 40,
            child: Card(
              color: Colors.blue[900],
              child: Text(
                "PREMER LEAGUE",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            child: Text(
              "Sun,12/26",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const DetailScreen();
                }));
              },
              child: Hero(
                tag: 'imageHero',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          child: Image.asset("imge/prsha.jfif"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            "barshlona",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Text(
                        "2",
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Text(
                        ":",
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            child: Image.asset("imge/prsha.jfif"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Text(
                              "barshlona",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
              child: ListView(
            children: [
              Card(
                color: Colors.white70,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Premier league",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                      ],
                    ),
                    Container(
                      width: 450,
                      height: 150,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Text("2",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text(":",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text("1",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 450,
                      height: 150,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Text("2",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text(":",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text("1",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 450,
                      height: 150,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Text("2",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text(":",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text("1",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 450,
                      height: 150,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Text("2",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text(":",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text("1",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 450,
                      height: 150,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Text("2",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text(":",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text("1",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 450,
                      height: 150,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Text("2",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text(":",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text("1",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 450,
                      height: 150,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Text("2",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text(":",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text("1",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 450,
                      height: 150,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Text("2",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text(":",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text("1",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 450,
                      height: 150,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Text("2",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text(":",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text("1",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 450,
                      height: 150,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Text("2",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text(":",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Text("1",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("imge/prsha.jfif"),
                                  ),
                                  Container(
                                    child: Text("barshlona",
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          )),
        ]));
  }
}

//this is sconed page--------------------
class DetailScreen extends StatelessWidget {
  const DetailScreen({key}) : super(key: key);

  // This widget is the root of your application.

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text(
            "SOCCERBOARD",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Hero(
                  tag: 'imageHero',
                  child: Container(
                      child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("data"),
                  )),
                ),
              ),
            )
          ],
        ));
  }
}
