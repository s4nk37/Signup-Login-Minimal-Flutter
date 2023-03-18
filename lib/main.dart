import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      theme:  ThemeData(
        primaryColor: Colors.grey,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool eye = true;

  void _toggle() {
    setState(() {
      eye = !eye;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
           Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 20, 0),
            child:  FlatButton(
              child:  Text("Log In",
              style:  TextStyle(color: Colors.grey, fontSize: 17),),
              onPressed: (){
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SecondRoute()),
  );
              },
              highlightColor: Colors.black,
              shape: StadiumBorder(),
            ),
          ),
        ],
      ),
      body:  SingleChildScrollView(
        child:  Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
               Text(
                "Sign up",
                style:  TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
              ),
               SizedBox(
                height: 70,
              ),
               TextField(
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                decoration:  InputDecoration(
                  // hintText: "Email",
                  labelText: "Email",
                ),
              ),
               SizedBox(
                height: 30,
              ),
               TextField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                decoration:  InputDecoration(
                  // hintText: "Email",
                  labelText: "Name",
                ),
              ),
               SizedBox(
                height: 30,
              ),
               TextField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                decoration:  InputDecoration(
                  labelText: "Password",
                  suffixIcon:  GestureDetector(
                    child:  Icon(
                      Icons.remove_red_eye,
                    ),
                    onTap: _toggle,
                  ),
                ),
                obscureText: eye,
              ),
               SizedBox(
                height: 30,
              ),
               SizedBox(
                height: 50,
                child:  RaisedButton(
                  child:  Text("Sign up",
                      style:  TextStyle(color: Colors.white)),
                  color: Colors.black,
                  elevation: 15.0,
                  shape: StadiumBorder(),
                  splashColor: Colors.white54,
                  onPressed: () {},
                ),
              ),
               Container(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                child:  Text(
                  "Or sign up with social account",
                  textAlign: TextAlign.center,
                ),
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   SizedBox(
                    height: 50,
                    width: 165,
                    child:  OutlineButton(
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                           Icon(
                            FontAwesomeIcons.facebookF,
                            size: 20,
                          ),
                           SizedBox(
                            width: 5,
                          ),
                           Text("Facebook",
                              style:  TextStyle(color: Colors.black)),
                        ],
                      ),
                      shape: StadiumBorder(),
                      highlightedBorderColor: Colors.black,
                      borderSide: BorderSide(color: Colors.black),
                      onPressed: () {},
                    ),
                  ),
                   SizedBox(
                    width: 20,
                  ),
                   SizedBox(
                    height: 50,
                    width: 165,
                    child:  OutlineButton(
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                           Icon(
                            FontAwesomeIcons.twitter,
                            size: 20,
                          ),
                           SizedBox(
                            width: 5,
                          ),
                           Text("Twitter",
                              style:  TextStyle(color: Colors.black)),
                        ],
                      ),
                      shape: StadiumBorder(),
                      highlightedBorderColor: Colors.black,
                      borderSide: BorderSide(color: Colors.black),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
               SizedBox(height: 60),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Text("By signing up you agree to our "),
                   GestureDetector(
                      child: Text("Terms of Use",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          )),
                      onTap: () {})
                ],
              ),
               SizedBox(
                height: 5,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Text("and "),
                   GestureDetector(
                      child: Text("Privacy Policy",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          )),
                      onTap: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
