import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: <String, WidgetBuilder>{
        "/misComidas": (BuildContext context) => MisComidas()
      },
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
          padding: EdgeInsets.only(
              top:180,
              bottom: 10,
              right: 10,
              left: 10
          ),
          decoration: BoxDecoration(
            color: Colors.orange,
            image: DecorationImage(
                image: NetworkImage(
                    "https://www.playmedic.com/wp-content/uploads/2017/02/redaccion-contenido-salud.png"
                ),
                alignment: Alignment.topCenter
            ),

          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.lightBlue,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          onPressed: (){
                            Navigator.pushNamed(context, "/misComidas");
                          },
                          child: SizedBox(
                            width: 100,
                            height: 70,
                            child: Center(
                              child: Text("MIS COMIDAS",
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                      )
                    ],
                ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.blueGrey,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          onPressed: (){},
                          child: SizedBox(
                            width: 100,
                            height: 70,
                            child: Center(
                              child: Text("COMIDAS PÚBLICAS",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),),
                            ),
                          ),
                        ),
                      )
                    ],
                   ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.redAccent,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          onPressed: (){},
                          child: SizedBox(
                            width: 100,
                            height: 70,
                            child: Center(
                              child: Text("MIS DIETAS",
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.red,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          onPressed: (){},
                          child: SizedBox(
                            width: 100,
                            height: 70,
                            child: Center(
                              child: Text("DIETAS PÚBLICAS",
                                  textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.green,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          onPressed: (){},
                          child: SizedBox(
                            width: 100,
                            height: 70,
                            child: Center(
                              child: Text("MIS ENTRENAMIENTOS",
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.lightGreen,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          onPressed: (){},
                          child: SizedBox(
                            width: 100,
                            height: 70,
                            child: Center(
                              child: Text("ENTRENAMIENTOS PÚBLICOS",
                                  textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.pinkAccent,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          onPressed: (){},
                          child: SizedBox(
                            width: 100,
                            height: 70,
                            child: Center(
                              child: Text("MI ARMARIO",
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.pink,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          onPressed: (){},
                          child: SizedBox(
                            width: 100,
                            height: 70,
                            child: Center(
                              child: Text("ROPA PÚBLICA",
                                  textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          )
      ),
    );
  }
}

class MisComidas extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("MIS COMIDAS"),),
      body: Center(
        child: Text("MIS COMIDAS"),
      ),
    );

  }
}