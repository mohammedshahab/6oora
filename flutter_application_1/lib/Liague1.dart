import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'scond.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '6ooba',
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
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    try {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => MyHomePage(
                      title: 'Home Page',
                    )));
      });
    } catch (e) {
      print(e);
    }

    return Scaffold(
      body: Center(
        child: Image.asset('imge/6oba.png'),
      ),
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
        body: Column(
          children: [
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
                  "Liague1",
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
            // SizedBox(
            //   height: 35,
            // ),
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
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
                            width: 120,
                            height: 120,
                            child: Image.asset("imge/Liague 1/angers.png"),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Container(
                            child: Text(
                              "Angers",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "2",
                          style: TextStyle(fontSize: 50, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          ":",
                          style: TextStyle(fontSize: 50, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
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
                              width: 120,
                              height: 120,
                              child: Image.asset("imge/Liague 1/AS_Monaco_FC.png"),
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Container(
                              child: Text(
                                "AS Monaco",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
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
              height: 50,
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
                                "Liague 1",
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
                                    child: Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child:
                                            Image.asset("imge/Liague 1/clermont-foot.png"),
                                      ),
                                      Container(
                                        child: Text("Clermont",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text("5",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text(":",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text("1",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                    child: Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child: Image.asset(
                                            "imge/Liague 1/FC_Girondins_de_Bordeaux.png"),
                                      ),
                                      Container(
                                        child: Text("Girondins",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
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
                                    child: Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child:
                                            Image.asset("imge/Liague 1/FC-Nantes-blason.png"),
                                      ),
                                      Container(
                                        child: Text("Nantes blason",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text("2",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text(":",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text("2",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                    child: Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child: Image.asset(
                                            "imge/Liague 1/lorient.png"),
                                      ),
                                      Container(
                                        child: Text("Lorient",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
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
                                    child: Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child: Image.asset("imge/Liague 1/LOSC.png"),
                                      ),
                                      Container(
                                        child: Text("LOSC",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text("2",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text(":",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text("1",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                    child: Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child: Image.asset("imge/Liague 1/metz.png"),
                                      ),
                                      Container(
                                        child: Text("Metz",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
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
                                    child: Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child:
                                            Image.asset("imge/Liague 1/montpellier.png"),
                                      ),
                                      Container(
                                        child: Text("Montpellier",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text("2",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text(":",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text("1",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                    child: Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child:
                                            Image.asset("imge/Liague 1/nice.png"),
                                      ),
                                      Container(
                                        child: Text("Nice",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
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
                                    child: Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child:
                                            Image.asset("imge/Liague 1/Olympique-de-Marseille.png"),
                                      ),
                                      Container(
                                        child: Text("Olympique Marseille",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text("2",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text(":",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text("1",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                    child: Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child: Image.asset("imge/Liague 1/Olympique-Lyonnais.png"),
                                      ),
                                      Container(
                                        child: Text("Olympique Lyonnais",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
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
                                    child: Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child: Image.asset("imge/Liague 1/PSG.png"),
                                      ),
                                      Container(
                                        child: Text("PSG",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text("2",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text(":",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text("1",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                    child: Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child: Image.asset("imge/Liague 1/Racing_Club_de_Strasbourg_Alsace.png"),
                                      ),
                                      Container(
                                        child: Text("Racing",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
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
                                    child: Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child:
                                            Image.asset("imge/Liague 1/rc-lens.png"),
                                      ),
                                      Container(
                                        child: Text("Rc lens",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text("2",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text(":",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text("1",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                    child: Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child: Image.asset("imge/Liague 1/reims.png"),
                                      ),
                                      Container(
                                        child: Text("Reims",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
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
                                    child: Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child:
                                            Image.asset("imge/Liague 1/St-Étienne.png"),
                                      ),
                                      Container(
                                        child: Text("St Étienne",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text("2",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text(":",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text("1",
                                      style: TextStyle(
                                        fontSize: 50,
                                      )),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                    child: Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        child: Image.asset("imge/Liague 1/Stade_Brestois_29.png"),
                                      ),
                                      Container(
                                        child: Text("Stade Brestois",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
//===========================

//this is sconed page--------------------

class DetailScreen extends StatefulWidget {
  const DetailScreen({key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            backgroundColor: Colors.blue[700],
            appBar: AppBar(
              backgroundColor: Colors.blue[700],
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
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
            body: Column(
              children: [
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
                      "Liague 1",
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

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            child: Image.asset("imge/Liague 1/angers.png"),
                          ),
                          Container(
                            child: Text(
                              "Real Madrid",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
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
                              width: 120,
                              height: 120,
                              child: Image.asset("imge/Liague 1/AS_Monaco_FC.png"),
                            ),
                            Container(
                              child: Text(
                                "AS Monaco",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),

                // the tab bar with four items
                SizedBox(
                  height: 50,
                  child: AppBar(
                    backgroundColor: Colors.blue[700],
                    bottom: TabBar(
                      tabs: [
                        Tab(
                          text: "STATS",
                        ),
                        Tab(
                          text: "TIMELINE",
                        ),
                        Tab(
                          text: "NEWS",
                        ),
                        Tab(
                          text: "COMNUNT",
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: TabBarView(
                    children: [
                      // first tab bar view widget

                      Container(
                          color: Colors.blue[700],
                          child: ListView(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 90,
                                            width: 90,
                                            child: Image.asset(
                                                "imge/Liague 1/angers.png"),
                                          ),
                                          Container(
                                            child: Text(
                                              "4",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Text(
                                              "4",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Text(
                                              "30%",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Text(
                                              "488",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Text(
                                              "50%",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Text(
                                              "10",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Text(
                                              "2",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Text(
                                              "0",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 70,
                                    ),
                                    Container(
                                        child: Column(
                                      children: [
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Container(
                                            child: Column(
                                          children: [
                                            Container(
                                              // padding: EdgeInsets.only(top: 30),
                                              child: Text(
                                                "TEAME STATS",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Container(
                                              child: Text(
                                                "Shots",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Container(
                                              child: Text(
                                                "Shots On Target",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Container(
                                              child: Text(
                                                "Possession",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Container(
                                              child: Text(
                                                "Passes",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Container(
                                              child: Text(
                                                " Pass Accuracy",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Container(
                                              child: Text(
                                                "Fouls",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Container(
                                              child: Text(
                                                "Yellow Cards",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Container(
                                              child: Text(
                                                "Red Cards ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ],
                                        ))
                                      ],
                                    )),
                                    SizedBox(
                                      width: 70,
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 90,
                                            width: 90,
                                            child:
                                                Image.asset("imge/Liague 1/AS_Monaco_FC.png"),
                                          ),
                                          Container(
                                            child: Text(
                                              "4",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Text(
                                              "4",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Text(
                                              "30%",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Text(
                                              "488",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Text(
                                              "50%",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Text(
                                              "10",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Text(
                                              "2",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Text(
                                              "0",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),

                      // second tab bar viiew widget
                      Container(
                        color: Colors.pink,
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset("imge/Liague 1/angers.png"),
                            )
                          ],
                        ),
                      ),
//--------------------------------------------------
                      Container(
                        child: ListView(
                          children: [
                            Container(
                              height: 100,
                              width: 400,
                              child: Card(
                                child: Row(
                                  children: [
                                    Container(
                                        child: Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "Djokovic deported from Australia after losing last-ditch appeal over visa ruling",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Image.asset(
                                              "imge/action.jpg",
                                              height: 90,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 100,
                              width: 400,
                              child: Card(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: Text(
                                                "Liverpool already know where fingers will be pointed after dreadful performance against Arsenal",
                                                style: TextStyle(fontSize: 17),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Image.asset(
                                              "imge/action.jpg",
                                              height: 90,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 100,
                              width: 400,
                              child: Card(
                                child: Row(
                                  children: [
                                    Container(
                                        child: Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "Liverpool already know where fingers will be pointed after dreadful performance against Arsenal",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Image.asset(
                                              "imge/action.jpg",
                                              height: 90,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 100,
                              width: 400,
                              child: Card(
                                child: Row(
                                  children: [
                                    Container(
                                        child: Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "Liverpool already know where fingers will be pointed after dreadful performance against Arsenal",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Image.asset(
                                              "imge/action.jpg",
                                              height: 90,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 100,
                              width: 400,
                              child: Card(
                                child: Row(
                                  children: [
                                    Container(
                                        child: Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "Liverpool already know where fingers will be pointed after dreadful performance against Arsenal",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Image.asset(
                                              "imge/action.jpg",
                                              height: 90,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Text("DHHDJHDHJDJJD"),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
