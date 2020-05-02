import 'package:flutter_counter/flutter_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Cart_prod extends StatefulWidget {
  @override
  _Cart_prodState createState() => _Cart_prodState();
}

class _Cart_prodState extends State<Cart_prod> {


  List Card_prods =[
    {
      'name' :'glasses',
      'picture' :'img/4.png',
      'old_price' :'350',
      'price' :'300',
      'size' :'M',
      'color':'red',
      'quntatiy':5},
    {
      'name' :'glasses',
      'picture' :'img/4.png',
      'old_price' :'150',
      'price' :'120',
      'size' :'L',
      'color':'red',
      'quntatiy':2},
    {
      'name' :'glasses',
      'picture' :'img/4.png',
      'old_price' :'130',
      'price' :'110',
      'size' :'M',
      'color':'red',
      'quntatiy':5},
    {
      'name' :'glasses',
      'picture' :'img/4.png',
      'old_price' :'130',
      'price' :'110',
      'size' :'M',
      'color':'red',
      'quntatiy':5},


  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Card_prods.length,
        itemBuilder: (context, int index){
          return single_cart(
            Cart_prod_name: Card_prods[index]['name'],
            Cart_prod_picture: Card_prods[index]['picture'],
            Cart_prod_price: Card_prods[index]['price'],
            Cart_prod_old_price: Card_prods[index]['old_price'],
            Cart_size: Card_prods[index]['size'],
            Cart_color: Card_prods[index]['color'],
            Cart_quntatiy: Card_prods[index]['quntatiy'],

          );
        });
  }
}
class single_cart extends StatelessWidget {

  final Cart_prod_name;
  final Cart_prod_picture;
  final Cart_prod_price;
  final Cart_prod_old_price;
  final Cart_size;
  final Cart_color;
  final Cart_quntatiy;

  const single_cart({Key key, this.Cart_prod_name, this.Cart_prod_picture,
    this.Cart_prod_price, this.Cart_size, this.Cart_color, this.Cart_quntatiy, this.Cart_prod_old_price}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    int _defaultValue =0;
    return Card(
      child: ListTile(
        leading: Image.asset(Cart_prod_picture,height: 80.0,width: 80.0,),
        title: Text(Cart_prod_name,style:TextStyle(fontSize: 20)),
        subtitle: new Column(
          children: <Widget>[
            new Wrap(
              children: <Widget>[
                Padding(padding: const EdgeInsets.all(8),
                child: Text('Size :',style: TextStyle(fontSize: 18),),),
                Padding(padding: const EdgeInsets.all(8),
                  child: Text(Cart_size,style: TextStyle(color: Colors.redAccent,fontSize: 18),),),
                Padding(padding: const EdgeInsets.all(8),
                  child: Text('Color:',style: TextStyle(fontSize: 18),),),
                Padding(padding: const EdgeInsets.all(8),
                  child: Text(Cart_color,style: TextStyle(color: Colors.redAccent,fontSize: 18)),),
                Padding(padding: const EdgeInsets.all(8),
                  child: Text('price:',style: TextStyle(fontSize: 18),),),
                Padding(padding: const EdgeInsets.all(8),
                  child: Text('\$$Cart_prod_price',style: TextStyle(color: Colors.purple,fontSize: 18)),),


               Counter(
                  initialValue: _defaultValue = 0,
                  minValue: 0,
                  maxValue: 10,
                  step: 0.5,
                  decimalPlaces: 1,
                  onChanged: null
                ),


               // Padding(padding: const EdgeInsets.all(8),
                //  child: Text('\$$Cart_prod_old_price',style: TextStyle(color: Colors.orange,fontSize: 18,decoration:TextDecoration.lineThrough )),),
              ],
            )
          ],
        ),
        trailing: new Column(
          children: <Widget>[
            IconButton(icon: Icon(Icons.delete,),iconSize: 30, onPressed: (){

            }),
            //Text('$Cart_quntatiy'),
            // IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){})
          ],
        ),
       ),

    );
  }
}

