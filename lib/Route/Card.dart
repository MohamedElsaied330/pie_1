import 'package:flutter/material.dart';
import 'package:pie1/Route/Card_product.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Cart'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));

          }),
        ],
      ),
      body: new Container(
        height: 900,width: 400,
        child:Cart_prod(),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.redAccent,padding: EdgeInsets.all(8),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Text('Total:100',style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.w500),)),
            Expanded(
                child: RaisedButton(
                  onPressed: (){},
                  child: Text('Buy',style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.w500),),))
          ],
        ),
      ),


    );

  }
}

