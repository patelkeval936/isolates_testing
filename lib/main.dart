import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:isolates_testing/isolates_tesing.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//
// List downloadedFiles = [];
//
//  void getFiles(int i) {  //https://speed.hetzner.de/100MB.bin
//   var data = RequestAssistant.requestApiData();
//   print('isolate number in getFiles method is $i ');
//   downloadedFiles.add(data);
//   print(downloadedFiles.length);
//
// }
//
// void makeAndGetIsolates(){
//   for(int i =0;i<10000;i++){
//     Isolate.spawn(getFiles,i);
//   }
// }


class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '0',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          makeAndGetIsolates();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
