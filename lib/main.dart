import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showDialog(context: context,
                builder: (context){
              return AlertDialog(
                title: Text("Alert"),
                content: Text("This is a simple alert diolog"),
                actions: [
                  RaisedButton(onPressed: () {Navigator.pop(context);}, child: Text("Ok"),)
                ],
              );
                });
          },
          child: Text("Click Me"),
        ),
      ),
    );
  }
}

