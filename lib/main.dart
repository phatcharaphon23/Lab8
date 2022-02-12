import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test8/screen/display.dart';
import 'package:test8/screen/formscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(children: [FormScreen(), DisplayScreen()]),
        bottomNavigationBar: TabBar(
            tabs: [Tab(text: 'บันทึกอุณหภูมิ'), Tab(text: 'รายชื่อนักเรียน')]),
        backgroundColor: Colors.blueGrey[900],
      ),
    );
  }
}
