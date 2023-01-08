import 'package:chatrooms/text.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  var uname='hello';
  void initState() {
    super.initState();
    loadCounter();
  }
  void loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      uname = prefs.getString('userName') ?? 'ok';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: modified_text(text: 'Chat App', size: 25),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage("images/background.jpg"),
    fit: BoxFit.cover,
    ),
    ),
    child: Center(
    child: modified_text(text: "Welcome "+uname+'!', size: 30,color: Colors.deepPurple),),
    ),
        drawer: NavDrawer()
    );
  }
}

