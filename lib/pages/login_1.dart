import 'package:passwordfield/passwordfield.dart';
import 'package:flutter/material.dart';
import 'package:pie1/pages/Check_page.dart';
import 'package:pie1/pages/HomePage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;
  String _password;
  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  //////////
  bool invisible = true;
  void inContact(TapDownDetails details) {
    setState(() {
      invisible = false;
    });
  }

  void outContact(TapUpDetails details) {
    setState(() {
      invisible = true;
    });
  }

  /////////////
  bool passwordVisible;
  TextEditingController _userPasswordController = new TextEditingController();

  @override
  void initState() {
    passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
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
          Padding(
            padding: EdgeInsets.only(left: 0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Log in',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(       // listview ,listTile ,title=> text ,subtitle TextField
            child: Card(
              child: new Container(
                  child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 320),
                    child: Text(
                      'Mobile',
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
                        hintText: '01095324182',
                        labelText: '01095324182'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 300),
                    child: Text(
                      'Password',
                      style: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Password',
                        icon: const Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: const Icon(Icons.lock),
                        )),
                    validator: (val) =>
                        val.length < 6 ? 'Password too short.' : null,
                    onSaved: (val) => _password = val,
                    obscureText: true,
                  ),
                  PasswordField(
                    color: Colors.green,
                    hasFloatingPlaceholder: true,
                    pattern: r'.*[@$#.*].*',
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(2),
//                                borderSide: BorderSide(width: 2, color: Colors.green)),
//                            focusedBorder: OutlineInputBorder(
//                                borderRadius: BorderRadius.circular(10),
//                                borderSide: BorderSide(width: 2, color: Colors.green)),
                    errorMessage:
                        'must contain special character either . * @ # \$',
                    suffixIconEnabled: true,
                  ),

                  TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _userPasswordController,
                      obscureText:
                          passwordVisible, //This will obscure text dynamically
                      decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          // Here is key idea
                          suffixIcon: IconButton(
                            icon: Icon(
                              passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                          ))),
                  SizedBox(
                    height: 20,
                  ),

                  ////////
                  Padding(
                    padding: EdgeInsets.only(right: 160),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Check()));
                      },
                      child: Text(
                        'Forgit password ?',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  RaisedButton(
                    onPressed: () {
                  //    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: new Text('GO',style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,fontSize: 18),),
                  )
                ],
              )),
            ),
          )
        ]));
  }
}
