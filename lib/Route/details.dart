import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie1/main.dart';
import 'package:pie1/pages/HomePage.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Route_paGe extends StatefulWidget {
  final product_name;
  final product_picture;
  final product_oldPrice;
  final product_price;

  const Route_paGe({ this.product_name,
    this.product_picture,
    this.product_oldPrice,
    this.product_price});

  @override
  _Route_paGeState createState() => _Route_paGeState();
}

class _Route_paGeState extends State<Route_paGe> {
  var rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('shopping'),
       /* InkWell(
            onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>  HomePage));
        },
            ),*/
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){
                showSearch(context: context, delegate: DataSearch());}),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 320,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_picture,fit: BoxFit.cover,),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text('${widget.product_name}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: Text('\$${widget.product_price}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.red))),
                      Expanded(
                          child: Text('\$${widget.product_oldPrice}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough,color: Colors.purple))),
                    ],
                  ),
                ),
              ),),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,builder: (context){
                      return AlertDialog(
                        title: Text('Size'),
                        content:Text('Choose U size') ,
                        actions: <Widget>[
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                            child: Text('Close'),)
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor:Colors.grey,
                  elevation: .2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text('Size',style: TextStyle(fontSize: 20),)),
                      Expanded(child:Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,builder: (context){
                      return AlertDialog(
                        title: Text('Color'),
                        content:Text('Choose U Color') ,
                        actions: <Widget>[
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                            child: Text('Close'),)
                        ],
                      );
                    });
                  },
                  color: Colors.white,textColor:Colors.grey,elevation: .2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text('Color',style: TextStyle(fontSize: 20),)),
                      Expanded(child:Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,builder: (context){
                      return AlertDialog(
                        title: Text('Qty'),
                        content:Text('Choose U Qty') ,
                        actions: <Widget>[
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                            child: Text('Close'),)
                        ],
                      );
                    });
                  },
                  color: Colors.white,textColor:Colors.grey,elevation: .2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text('Qty',style: TextStyle(fontSize: 20),)),
                      Expanded(child:Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 10)),
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  elevation: .2,textColor: Colors.white,
                  child: Text('Buy'),
                ),
              ),
              new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.purple,), onPressed: (){}),
              SmoothStarRating(
                rating: rating,
                size: 30,
                filledIconData: Icons.star,
                halfFilledIconData: Icons.star_half,
                defaultIconData: Icons.star_border,
                starCount: 5,
                allowHalfRating: false,
                color: Colors.redAccent,
                borderColor: Colors.green,
                spacing: 2.0,
                onRatingChanged: (value) {
                  setState(() {
                    rating = value;
                  });
                },
              )
             // new IconButton(icon: Icon(Icons.favorite_border,color: Colors.red,), onPressed: (){}),
            ],
          ),
          Divider(),
          ListTile(
            title: Text('Product detials'),
            subtitle: Text('Staying warm never looked so good thanks to our edit of men’s coats and jackets.'
                ' Winter coats are looking particularly toasty right now,'
                ' with parental-approved puffer coats from the likes of Pull&Bear,'
                ' Columbia and Jack & Jones bringing some serious padded protection.'
                ' Set your filter to ASOS DESIGN to discover new-season bomber jackets for men,'
                ' or browse New Look for denim jackets and overcoats. And if you’re in the market for something a little slicker,'
                ' AllSaints can hook you up with a supple leather jacket. We can almost feel the benefit from here.'),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(10, 10, 5, 5),
                child: Text('Product Name'),),
              Padding(padding: EdgeInsets.all(1), child: Text(widget.product_name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),)
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(10, 10, 5, 5),
                child: Text('Product brand'),),
              Padding(padding: EdgeInsets.all(1), child: Text('brand X',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),)


            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(10, 10, 5, 5),
                child: Text('Product condition'),),
              Padding(padding: EdgeInsets.all(1), child: Text('New',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),)

            ],
          ),
          Divider(),
          Padding(padding: const EdgeInsets.all(3),
            child: Text('Similar Products',style:TextStyle(fontSize: 22,color: Colors.redAccent),),),
          Container(
            height: 400,
            child: similar_pro(),
          ),
        ],
      ),
    );
  }
}

class similar_pro extends StatefulWidget {
  @override
  _similar_proState createState() => _similar_proState();
}

class _similar_proState extends State<similar_pro> {
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
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context , int index){
          return Single_similar_prod (
            prod_name:  prod[index]['name'],
            prod_picture :  prod[index]['picture'],
            prod_oldPrice :  prod[index]['old_price'],
            prod_price: prod[index]['price'],
          );
        });
  }
}

class Single_similar_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldPrice;
  final prod_price;

  Single_similar_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_oldPrice,
    this.prod_price
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text('hero1'),
          child: Material(
            child: InkWell(
              onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>new Route_paGe(
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
                  child:Image.asset(prod_picture,fit: BoxFit.cover,) ),
            ),
          )),
    );
  }
}
