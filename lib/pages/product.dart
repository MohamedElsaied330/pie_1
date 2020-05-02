import 'package:flutter/material.dart';
import 'package:pie1/Route/details.dart';

class product_list extends StatefulWidget {
  @override
  _product_listState createState() => _product_listState();
}

class _product_listState extends State<product_list> {
  List prod =[{
    'name' :'Plazer',
    'picture' :'img/3.png',
    'old_price' :'350',
    'price' :'300',},
    {
      'name' :'Jacket',
      'picture' :'img/3.png',
      'old_price' :'250',
      'price' :'200',},
    {
      'name' :'Jacket',
      'picture' :'img/3.png',
      'old_price' :'200',
      'price' :'180',},
    {
      'name' :'Plazer',
      'picture' :'img/3.png',
      'old_price' :'350',
      'price' :'300',},
    {
      'name' :'Jacket',
      'picture' :'img/3.png',
      'old_price' :'250',
      'price' :'200',},
    {
      'name' :'Jacket',
      'picture' :'img/3.png',
      'old_price' :'200',
      'price' :'180',},
    {
      'name' :'Plazer',
      'picture' :'img/3.png',
      'old_price' :'350',
      'price' :'300',},
    {
      'name' :'Jacket',
      'picture' :'img/3.png',
      'old_price' :'250',
      'price' :'200',},
    {
      'name' :'Jacket',
      'picture' :'img/3.png',
      'old_price' :'200',
      'price' :'180',},

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: prod.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 10),
        itemBuilder: (BuildContext context , int index){
          return Single_prod (
            prod_name:  prod[index]['name'],
            prod_picture :  prod[index]['picture'],
            prod_oldPrice :  prod[index]['old_price'],
            prod_price: prod[index]['price'],
          );
        });
  }
}
class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldPrice;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_oldPrice,
    this.prod_price
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text('hero2'),
          child: Material(
            child: InkWell(
              onTap: ()=>
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>new Route_paGe(
                    product_name: prod_name,
                    product_picture: prod_picture,
                    product_oldPrice: prod_oldPrice,
                    product_price: prod_price,
                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(prod_name,style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black),),
                      title:Text('\$$prod_price',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.redAccent),) ,
                      subtitle: Text('\$$prod_price',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.amber,decoration:TextDecoration.lineThrough),
                      ),
                    ),),
                  child:Image.asset(prod_picture,height: 300,width: 300,) ),
            ),
          )),
    );
  }
}
