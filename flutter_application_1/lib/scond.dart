import 'dart:ui';

import 'package:flutter/material.dart';
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

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            child: Image.asset("imge/real.jfif"),
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
                              child: Image.asset("imge/prsha.jfif"),
                            ),
                            Container(
                              child: Text(
                                "barshlona",
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
                                            child:
                                                Image.asset("imge/real.jfif"),
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
                                                Image.asset("imge/prsha.jfif"),
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
                              child: Image.asset("imge/prsha.jfif"),
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
