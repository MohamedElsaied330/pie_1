import 'package:flutter/material.dart';
import 'package:pie1/pages/first_page.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child :GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>First()));
        },
        child: Image.asset('img/2.png',
          fit: BoxFit.cover,),)
    );
  }
}
