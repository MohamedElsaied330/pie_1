import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:pie1/pages/first_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:pie1/Route/Card.dart';
import 'package:pie1/pages/product.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  Widget Cr = new Container(
      height: 200,
      child:  new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('img/1.png'),
          AssetImage('img/2.png'),
          AssetImage('img/1.png'),
          AssetImage('img/2.png'),
        ],
        autoplay: true,
         animationDuration: Duration(milliseconds: 10000),
         animationCurve: Curves.fastOutSlowIn,
        dotSize: 8,
        indicatorBgPadding: 6,
        dotBgColor: Colors.transparent,
      )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Image.asset('img/3.png',width: 170,height: 170,),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.purple,), onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cart()));
          }),
          IconButton(icon: Icon(Icons.search,color: Colors.green,size: 30,), onPressed: (){
            showSearch(context: context, delegate: DataSearch());
          }),
        ],

      ),
      drawer: Drawer(
        child:Container(
          //color: Colors.black,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  accountName: new Text('Mohamed',style: TextStyle(fontSize: 22),),
                  accountEmail: new Text('mohamedElsaied@yahoo.com',style: TextStyle(fontSize: 20),),
              currentAccountPicture:GestureDetector(
                child:CircleAvatar(
                  radius: 5,
                  child: IconButton(icon: Icon(Icons.person), onPressed: (){}),
                ) ,),
                decoration: BoxDecoration(color: Colors.black12),),
              InkWell(
                onTap: (){},
                child: new ListTile(
                  title: new Text('Home Page',style: TextStyle(fontSize: 22),),
                  leading: Icon(Icons.home,size: 30,color: Colors.amber,),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){},
                child: new ListTile(
                  title: new Text('Categoriry',style: TextStyle(fontSize: 22),),
                  leading: Icon(Icons.category,size: 30,color: Colors.black12,),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){},
                child: new ListTile(
                  title: new Text('Notification',style: TextStyle(fontSize: 22),),
                  leading: Icon(Icons.notifications_active,size: 30,color: Colors.grey,),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){},
                child: new ListTile(
                  title: new Text('Profile',style: TextStyle(fontSize: 22),),
                  leading: Icon(Icons.person,size: 30,color: Colors.blueGrey,),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){},
                child: new ListTile(
                  title: new Text('About',style: TextStyle(fontSize: 22),),
                  leading: Icon(Icons.help,size: 30,color: Colors.amber,),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){},
                child: new ListTile(
                  title: new Text('policy',style: TextStyle(fontSize: 22),),
                  leading: Icon(Icons.announcement,size: 30,color: Colors.redAccent,),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){},
                child: new ListTile(
                  title: new Text('Contact Us',style: TextStyle(fontSize: 22),),
                  leading: Icon(Icons.contacts,size: 30,color: Colors.orange,),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){},
                child: new ListTile(
                  title: new Text('Setting',style: TextStyle(fontSize: 22),),
                  leading: Icon(Icons.settings,size: 30,color: Colors.redAccent,),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){},
                child: new ListTile(
                  title: new Text('log out',style: TextStyle(fontSize: 22),),
                  leading: Icon(Icons.lock_outline,size: 30,color: Colors.grey,),
                ),
              ),
            ],
          ),
        ),
      ),


                          ////////////////////////////////////////////////////

      body: Container(
        //color: Colors.black12,
        margin: EdgeInsets.only(left: 5,right: 5),
        child: new ListView(
          children: <Widget>[
            Cr,
            Padding(
            padding: const EdgeInsets.only(top:5),
          child: new FlatButton(
            onPressed: (){},
            child: Text('View All',style:TextStyle(color: Colors.black,fontSize:22 ),),),
        ),
        ////////////////////////////////////////////////////
        Divider(),
            SizedBox(height: 8,),
            new Text('Products',style: TextStyle(color: Colors.green,fontSize: 28,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Container(
              height: 1000,
              child: product_list(),
            )
           ////////////////////////////////
         /*
           Container(
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 10,
                runSpacing: 5,
                children: <Widget>[
                   new Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>First()));
                        },
                        child: Image.asset('img/2.png',
                          height: 110,width: 90),),
                      new Text('Store',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),) ,
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>First()));
                        },
                        child: Image.asset('img/2.png',
                          height: 110,width: 85,),),
                      new Text('Store',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),) ,
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>First()));
                        },
                        child: Image.asset('img/2.png',
                          height: 110,width: 85,),),
                      new Text('Store',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),) ,
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>First()));
                        },
                        child: Image.asset('img/2.png',
                          height: 110,width: 85,),),
                      new Text('Store',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),) ,
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>First()));
                        },
                        child: Image.asset('img/2.png',
                          height: 110,width: 85,),),
                      new Text('Store',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),) ,
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>First()));
                        },
                        child: Image.asset('img/2.png',
                            height: 110,width: 85,),),
                      new Text('Store',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),) ,
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>First()));
                        },
                        child: Image.asset('img/2.png',
                            height: 110,width: 85,),),
                      new Text('Store',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),) ,
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>First()));
                        },
                        child: Image.asset('img/2.png',
                          height: 110,width: 85,),),
                      new Text('Store',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),) ,
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>First()));
                        },
                        child: Image.asset('img/2.png',
                          height: 110,width: 85,),),
                      new Text('Store',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),) ,
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>First()));
                        },
                        child: Image.asset('img/2.png',
                          height: 110,width: 85,),),
                      new Text('Store',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),) ,
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>First()));
                        },
                        child: Image.asset('img/2.png',
                          height: 110,width: 85,),),
                      new Text('Store',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),) ,
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>First()));
                        },
                        child: Image.asset('img/2.png',
                            height: 110,width: 85,),),
                      new Text('Store',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),) ,
                    ],
                  ),
                ],
              ),
            )
*/
         ///////////////////////

        ])),


      /////////////////////////////////////////
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 1 ,
        height: 75.0,
        items: <Widget>[
          Icon(Icons.home, size: 35,color: Colors.cyan),
          Icon(Icons.list, size: 35),
          Icon(Icons.favorite, size: 35,color: Colors.redAccent),
          Icon(Icons.person, size: 35,),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 100),
      ),
    );
  }
}
 class DataSearch extends SearchDelegate<String>{
  final item = [
     "as" ,
    "asss",
    "moh",
    "ass" ,
    "assss",
    "mohs",
  ];
  final recent_item = [
    "assss","mohs"
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [IconButton(icon: Icon(Icons.clear), onPressed: (){
      query= '';
    })];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow,
            progress: transitionAnimation),
        onPressed: (){
           Navigator.pop(context);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestList =query.isEmpty ?recent_item : item.where((p)=>p.startsWith(query)).toList();
    return ListView.builder(
        itemCount: suggestList.length,
        itemBuilder: (context , index){
         return ListTile(
           onTap: (){},
            leading: Icon(Icons.shopping_cart),
            title: RichText(text:
            TextSpan(
              text: suggestList[index].substring(0,query.length),
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                children:[
                   TextSpan(
                   text: suggestList[index].substring(query.length),
                   style: TextStyle(color: Colors.grey),)
                  ]
            )),
          );
        });
  }

 }