import 'package:flutter/material.dart';



class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.topRight,
      padding: EdgeInsets.only(top: 25,left: 5),
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left: 260),
            child:FlatButton(onPressed: (){
              Navigator.of(context).pop();
            },
              child:Text('Previos',
                style: TextStyle(color:Colors.orange,fontSize: 20),),
              //shape:RoundedRectangleBorder(
               //   borderRadius: BorderRadius.circular(5)),color:Theme.of(context).primaryColor ,
            ) ,),
          Image.asset('img/3.png'),
          SizedBox(height: 5,),
          Image.asset('img/4.png',height: 120,width: 150,),
          Expanded(
            child: Card(
              child: new Container(
                 child: Column(
                   children: <Widget>[
                     Padding(padding: EdgeInsets.only(right: 280,bottom: 5),
                       child :Text('User Name',style:TextStyle(color: Colors.blueGrey,fontSize: 22),),),
                     TextField(
                       controller: null,
                       decoration: InputDecoration(icon: Icon(Icons.person_add,color: Colors.redAccent,),hintText: 'Mohamed',labelText:'Mohamed' ),
                     ),
                     Padding(padding: EdgeInsets.only(right: 320,bottom: 5),
                       child :Text('Mobile',style:TextStyle(color: Colors.blueGrey,fontSize: 22),),),
                     TextField(
                       controller: null,
                       decoration: InputDecoration(icon: Icon(Icons.phone,color: Colors.redAccent,),hintText: '01095324182',labelText:'01095324182' ),
                     ),
                     Padding(padding: EdgeInsets.only(right: 320,bottom: 5),
                       child :Text('E-mail',style:TextStyle(color: Colors.blueGrey,fontSize: 22),),),
                     TextField(
                       controller: null,
                       decoration: InputDecoration(icon: Icon(Icons.mail_outline,color: Colors.redAccent,),hintText: 'mohamedelsaied@yahoo.com',labelText:'mohamedelsaied@yahoo.com' ),
                     ),
                     Padding(padding: EdgeInsets.only(right: 320,bottom: 5),
                       child :Text('Place',style:TextStyle(color: Colors.blueGrey,fontSize: 22),),),
                     TextField(
                       controller: null,
                       decoration: InputDecoration(icon: Icon(Icons.add_location,color: Colors.redAccent,),hintText: 'sharabas',labelText:'sharabas' ),
                     ),
                     Padding(padding: EdgeInsets.only(right: 300,bottom: 5),
                       child :Text('Password',style:TextStyle(color: Colors.blueGrey,fontSize: 22),),),
                     TextField(
                       controller: null,
                       decoration: InputDecoration(icon: Icon(Icons.visibility_off,color: Colors.redAccent,),hintText: '11122',labelText:'*********' ),
                     ),
                   ],
                 )
                 ),
            ),
          )
        ]
          )
    );

  }
}
