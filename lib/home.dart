import 'package:blooddonation/Donate.dart';
import 'package:blooddonation/Profile.dart';
import 'package:flutter/material.dart';
import 'Request.dart';
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int curindex=0;

  final widgetOptions = [
    const request(),
    const donatehome(),
    const profile(),
  ];
  final title = ["Request","donate"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color(0xFFF52646),
        title: const Text("PULSE",style: TextStyle(color: Colors.white),),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("images/Drop 2.png",scale: 1.5,),
        ),
      ),
      body: Center(
        child: widgetOptions.elementAt(curindex),
      ),
    bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'Request'
    ),
    BottomNavigationBarItem(icon: Icon(Icons.explore_outlined),label: 'donate'),
     BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: 'Profile'),
    // BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: 'Profile'),
        ],
    currentIndex: curindex,
    unselectedItemColor:Colors.black,
    selectedItemColor: Colors.blue,
    onTap: (int index) {
    setState(() {
    curindex = index;});})
    );
  }
}
