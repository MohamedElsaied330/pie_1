import 'package:flutter/material.dart';



class Confirm extends StatefulWidget {
  @override
  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        alignment: Alignment.topRight,
        padding: EdgeInsets.only(top: 25, left: 5),
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 260),
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Previos',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              //shape:RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(5)),color:Theme.of(context).primaryColor ,
            ),
          ),
          Image.asset('img/3.png'),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Enter code that sent ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: 35,),
          Expanded(
            child: Card(
              child: new Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 220),
                        child: Text(
                          'Authentication Code',
                          style: TextStyle(color: Colors.blueGrey, fontSize: 22),
                        ),
                      ),
                      TextField(
                        controller: null,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.phone,
                              color: Colors.redAccent,
                            ),
                            hintText: '***********',
                            labelText: 'Code'),
                      ),

                      SizedBox(
                        height: 60,
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        color: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: new Text('Send',style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,fontSize: 25),),
                      )
                    ],
                  )),
            ),
          )
        ]));
  }
}
