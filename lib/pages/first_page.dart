import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:pie1/pages/secand_page.dart';


class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      //alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 50,),
      child: Card(
        child: InkWell(
          onTap: (){},
          child: Column(
            children: <Widget>[
              Text('Next',style: TextStyle(color: Colors.brown,fontSize: 25,
                  fontWeight: FontWeight.bold),
                ),
              SizedBox(height: 80,),
              new Container(
                alignment: Alignment.center,
                height: 600,
                child: Column(
                children: <Widget>[
                  new Text('Welcome',style: TextStyle(color: Colors.brown,fontSize: 25,
                    fontWeight: FontWeight.bold)),
                  Image.asset('img/3.png',
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                   // child: new Text('',
                    //  style: TextStyle(fontSize: 23,color: Colors.red),),
                  ),

                ],
              )),
            /*  FlatButton(
                onPressed: null,color: Theme.of(context).primaryColor,
                child: Text('Ignore',style: TextStyle(fontSize: 25,color: Colors.blue,),),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)),
              ),*/
              RaisedButton(
                onPressed:(){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>SecandPage())
                  );
                } ,
                color:Theme.of(context).primaryColor ,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text('تخطى',style: TextStyle(fontSize: 25,color: Colors.white,),),)
            ]
          )
        ),
      ),
    );
  }
}
