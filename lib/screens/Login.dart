import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdddddd),
      body: Stack(
        children: <Widget>[
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xffd53369), Color(0xffcbad6d)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              child: Center(
                child: Text(
                  'dribbble',
                  style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xffcbac21), Color(0xffd53369)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
            ),
          ),
          Positioned(
            right: -getBigDiameter(context) / 2,
            bottom: -getBigDiameter(context) / 2,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0x4fEB5757)),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: ListView(children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                    child: Column(children: <Widget>[
                      TextField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.email,
                                color: Color(0xffff4891),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffff4891)),
                              ),
                              labelText: "Email: ",
                              labelStyle: TextStyle(color: Color(0xffff4891)))),
                      TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.vpn_key,
                                color: Color(0xffff4891),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffff4891)),
                              ),
                              labelText: "Password: ",
                              labelStyle: TextStyle(color: Color(0xffff4891))))
                    ])),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                      child: Text("Forgot Password",
                          style: TextStyle(
                              color: Color(0xffff4891), fontSize: 11)),
                    )),
                Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 40,
                              child: Container(
                                child: Material(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.transparent,
                                  child: InkWell(
                                      borderRadius: BorderRadius.circular(20),
                                      splashColor: Colors.amber,
                                      onTap: () {},
                                      child: Center(
                                          child: Text('Sign in',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight:
                                                      FontWeight.w700)))),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xffcbac21),
                                          Color(0xffd53369)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter)),
                              )),
                          FloatingActionButton(
                              onPressed: () {},
                              elevation: 0,
                              mini: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/facebook-f-brands.svg"))),
                          FloatingActionButton(
                              onPressed: () {},
                              elevation: 0,
                              mini: true,
                              child: Image(
                                  image:
                                      AssetImage("assets/twitter-brands.svg")))
                        ])),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account?",
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500)),
                      Text("Sign up",
                          style: TextStyle(
                              fontSize: 11,
                              color: Color(0xffff4891),
                              fontWeight: FontWeight.w700))
                    ])
              ]))
        ],
      ),
    );
  }
}
