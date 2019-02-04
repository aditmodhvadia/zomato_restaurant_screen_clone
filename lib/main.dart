import 'package:flutter/material.dart';
import 'widgets/QuickActions.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("American Food House"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Header(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(height: 2.0),
          ),
          QuickActions(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(height: 2.0),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('American Food House',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
              Expanded(child: Container()),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                child: Container(
                  color: Colors.lightGreen,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      '3.9',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 4.0),
              child: Text(
                'American Food House, Bodakdev, Ahmedabad',
                style: TextStyle(color: Colors.grey),
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Closed for dineout',
                style: TextStyle(color: Colors.red),
              ),
//              todo: add the centered dot here
              Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: Icon(
                  Icons.adjust,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: Text(
                  'Opens at 4am',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.grey,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: <Widget>[
              Text(
                'Quick Bites - Pizza, American',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Map',
                style: TextStyle(
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.green,
                    decorationStyle: TextDecorationStyle.dashed),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Menu',
                style: TextStyle(
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.green,
                    decorationStyle: TextDecorationStyle.dashed),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '463 Reviews',
                style: TextStyle(
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.green,
                    decorationStyle: TextDecorationStyle.dashed),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '295 Photos',
                style: TextStyle(
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.green,
                    decorationStyle: TextDecorationStyle.dashed),
              ),
            )
          ],
        )
      ],
    );
  }
}
