import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todosapp/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int count = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // APPBAR START....
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          leading: const Text("Logo"),
          title: const Text(
            "Flutter app",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        // END OF APPBAR ....

        body: buildBody(),

        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                count = count + 1;
              });
            },
            backgroundColor: Colors.pink,
            child: const Text("+")),
      ),
    );
  }

// BODY START....
  Widget buildBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(count.toString()),
          Text(
            "TEST TEXT",
            style: TextStyle(
              color: HexColor(dark),
              fontSize: 40,
              letterSpacing: 10,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
