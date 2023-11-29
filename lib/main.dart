import 'package:flutter/material.dart';

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
            "Ediləcəklər listəsi",
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
      child: Text(count.toString()),
    );
  }
}
