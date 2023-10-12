// ignore_for_file: non_constant_identifier_names

import 'package:dukaan_clone/Pages/account.dart';
import 'package:dukaan_clone/Pages/homeScreen.dart';
import 'package:dukaan_clone/Pages/manage.dart';
import 'package:dukaan_clone/Pages/orders.dart';
import 'package:dukaan_clone/Pages/catalogue.dart';
import 'package:flutter/material.dart';
//import 'package:student_records/Pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int indexNum=0;
  List Screen=[
     HomePage(),
    OrdersPage(),
    CataloguePage(),
    ManagePage(),
    AccountPage(),
  ];

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dukaan-clone',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xff136eb4)),
        //colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 243, 240, 240)),
        useMaterial3: true,
      ),
      
      home: Scaffold(
          //bottom navigation bar
      bottomNavigationBar:BottomNavigationBar(
        items: const [
          
          //item1
          BottomNavigationBarItem(
            icon:  Icon(Icons.home),
            label:"Home",
            backgroundColor: Color.fromARGB(255, 244, 245, 246)),
            
            //item2
            BottomNavigationBarItem(
            icon:  Icon(Icons.list_alt_outlined),
            label:"Orders",
            backgroundColor: Color.fromARGB(255, 245, 245, 245)),
           
            //item3
            BottomNavigationBarItem(
            icon:  Icon(Icons.dashboard),
            label:"Products",
            backgroundColor: Color.fromARGB(255, 248, 249, 250)),
            
            //item4
            BottomNavigationBarItem(
            icon:  Icon(Icons.auto_awesome_motion),
            label:"Manage",
            backgroundColor: Color.fromARGB(255, 253, 253, 253)),
            
            //item5
            BottomNavigationBarItem(
            icon:  Icon(Icons.account_circle_sharp),
            label:"Account",
            backgroundColor: Color.fromARGB(255, 252, 252, 252)),
        ],
        currentIndex: indexNum, 
        showUnselectedLabels: true,
        selectedItemColor: const Color.fromRGBO(33, 150, 243, 1),
        unselectedItemColor: Color.fromARGB(255, 109, 109, 109),

        onTap: (int index){
          setState(() {
            indexNum=index;
          });
        },
      ),
      body: Screen.elementAt(indexNum),
      )
      
    );
  }
}
