
import 'package:chatrooms/pages/football.dart';
import 'package:chatrooms/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../pages/arts.dart';
import '../pages/coding.dart';
import '../pages/login.dart';
import '../pages/music.dart';
import '../pages/photography.dart';


class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  var uname='hello';
  void initState() {
    // TODO: implement initState
    super.initState();
    //uname = UserSimplePreferences.getUname() ?? 'ok';
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
    return Drawer(
      backgroundColor: Colors.blueGrey[200],
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height:80,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              padding: EdgeInsets.only(top: 10),
              child: ListTile(
                leading: Icon(Icons.home,color: Colors.white,),
                title: Text('Home',style: TextStyle(color: Colors.white),),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) {
                          return HomePage();
                        }));
                  }
      ),),
          ),
          ListTile(
              leading: Icon(Icons.laptop_chromebook,color: Colors.white,),
              title: Text('Coding',style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) {
                      return Coding(uname: uname,);
                    }));
              }),
          ListTile(
              leading: Icon(Icons.sports_basketball,color: Colors.white,),
              title: Text('Football',style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) {
                  return FootBall(uname: uname,);
                }));
              }),
          ListTile(
            leading: Icon(Icons.camera_alt,color: Colors.white,),
            title: Text('Photography',style: TextStyle(color: Colors.white),),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) {
                    return Photography(uname: uname,);
                  }));
            }),
          ListTile(
              leading: Icon(Icons.music_note,color: Colors.white,),
              title: Text('Music',style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) {
                  return music(uname: uname,);
                }));
              }),
          ListTile(
            leading: Icon(Icons.draw,color: Colors.white,),
            title: Text('Arts',style: TextStyle(color: Colors.white),),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) {
                    return Arts(uname: uname,);
                  }));
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app,color: Colors.white,),
            title: Text('Logout',style: TextStyle(color: Colors.white),),
            onTap: () async{
              SharedPreferences pref =await SharedPreferences.getInstance();
              pref.remove('userName');
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                return LoginPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
