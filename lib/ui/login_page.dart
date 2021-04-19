import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  bool checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        this.fondoPantalla(),
        this.cardPrincipal(),
      ],
    ));
  }

  Widget fondoPantalla() {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('https://i.imgur.com/IlJGvZM.jpg'),
                fit: BoxFit.cover)));
  }

  Widget cardPrincipal() {
    return Center(
      child: Card(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                  width: 340,
                  height: 650,
                  child: Column(
                    children: [
                      this.contenidoPrincipal(),
                      this.inputsPrincipal(),
                      SizedBox(
                        height: 30,
                      ),
                      this.inputsSecundarios(),
                      SizedBox(
                        height: 25,
                      ),
                      this.inputsTerciarios(),
                    ],
                  ))),
          color: Colors.white,
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0))),
    );
  }

  Widget contenidoPrincipal() {
    return SafeArea(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        SizedBox(
          height: 15,
        ),
        Text(
          'LOGIN',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          'login here using your username and\npassword',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(
          height: 40,
        ),
      ]),
    );
  }

  Widget inputsPrincipal() {
    return Center(
      child: Container(
        width: 270,
        padding: EdgeInsets.all(4.0),
        child: Column(children: [
          TextField(
              autocorrect: true,
              decoration: InputDecoration(
                icon: Icon(Icons.email, color: Colors.black),
                hintStyle: TextStyle(color: Colors.grey),
                hintText: 'Enter your email here...',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink, width: 1),
                ),
              )),
          SizedBox(
            height: 30,
          ),
          TextField(
            obscureText: true,
            autocorrect: true,
            decoration: InputDecoration(
                icon: Icon(Icons.lock, color: Colors.black),
                hintStyle: TextStyle(color: Colors.grey),
                hintText: 'Enter your password here...',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink, width: 1),
                )),
          )
        ]),
      ),
    );
  }

  Widget inputsSecundarios() {
    return Container(
      width: 335,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(onChanged: null, value: this.checkbox),
              Text('Remember me'),
            ],
          ),
          Text('Forgot password?',
              style: TextStyle(
                color: Color(0xffd152bb),
              )),
        ],
      ),
    );
  }

  Widget inputsTerciarios() {
    return Column(children: [
      this.buttonGradient(),
      SizedBox(
        height: 30,
      ),
      Text(
        'Or login with',
        style: TextStyle(fontSize: 18),
      ),
    ]);
  }

  Widget buttonGradient() {
    return Container(
      height: 38.0,
      child: RaisedButton(
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffe83080),
                  Color(0xfff973cf),
                  Color(0xffdf3ea3)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(15.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 265.0, minHeight: 40.0),
            alignment: Alignment.center,
            child: Text(
              "Sign in",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
