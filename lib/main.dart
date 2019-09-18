import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      theme: new ThemeData(
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
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          new Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 20, 0),
            child: new Text(
              "Log In",
              style: new TextStyle(color: Colors.grey, fontSize: 17),
            ),
          ),
        ],
      ),
      body: new SingleChildScrollView(
        child: new Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: new Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Text(
                "Sign up",
                style: new TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
              ),
              new SizedBox(
                height: 70,
              ),
              new TextField(
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                decoration: new InputDecoration(
                  // hintText: "Email",
                  labelText: "Email",
                ),
              ),
              new SizedBox(
                height: 30,
              ),
              new TextField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                decoration: new InputDecoration(
                  // hintText: "Email",
                  labelText: "Name",
                ),
              ),
              new SizedBox(
                height: 30,
              ),
              new TextField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                obscureText: true,
                decoration: new InputDecoration(
                  // hintText: "Email",
                  labelText: "Password",
                ),
              ),
              new SizedBox(
                height: 30,
              ),
              new SizedBox(
                height: 50,
                child: new RaisedButton(
                  child: new Text("Sign up",
                      style: new TextStyle(color: Colors.white)),
                  color: Colors.black,
                  elevation: 15.0,
                  shape: StadiumBorder(),
                  splashColor: Colors.white54,
                  onPressed: () {},
                ),
              ),
              new Container(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                child: new Text(
                  "Or sign up with social account",
                  textAlign: TextAlign.center,
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new SizedBox(
                    height: 50,
                    width: 165,
                    child: new OutlineButton(
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(FontAwesomeIcons.facebookF,size: 20,),
                          new SizedBox(
                            width: 5,
                          ),
                          new Text("Facebook",
                              style: new TextStyle(color: Colors.black)),
                        ],
                      ),
                      shape: StadiumBorder(),
                      highlightedBorderColor: Colors.black,
                      borderSide: BorderSide(color: Colors.black),
                      onPressed: () {},
                    ),
                  ),
                  new SizedBox(
                    width: 20,
                  ),
                  new SizedBox(
                    height: 50,
                    width: 165,
                    child: new OutlineButton(
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(FontAwesomeIcons.twitter,size: 20,),
                          new SizedBox(
                            width: 5,
                          ),
                          new Text("Twitter",
                              style: new TextStyle(color: Colors.black)),
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
              new SizedBox(height: 60),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("By signing up you agree to our "),
                  new GestureDetector(
                      child: Text("Terms of Use",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          )),
                      onTap: () {})
                ],
              ),
              new SizedBox(
                height: 5,
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("and "),
                  new GestureDetector(
                      child: Text("Privacy Policy",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          )),
                      onTap: () {})
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
