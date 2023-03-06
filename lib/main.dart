import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 30),
            ),
            Image.asset('assets/logo-flutter.png', width: 200, height: 100),
            _email(),
            _password(),
            _login(),
            _forgot(),

          ] ,
        ),
    ));
  }

  Widget _email() {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
          width: 500,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
              hintText: 'Email',
            ),
          ),
        ),
      ],
    );
  }

  Widget _password(){
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
          width: 500,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
              hintText: 'Password',
            ),
          ),
        ),
      ],
    );
  }

  Widget _login() {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(top: 5),
          width: 450,
          height: 40,
          child: TextButton(
          style: TextButton.styleFrom(
          backgroundColor: Colors.blue),
          onPressed: () {},
          child: Text(
              "Log In",
              style: TextStyle(
               color: Color(0xffffffff),
                ),
            ),
        ),
        ),
      ],
    );
  }

  Widget _forgot() {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(top: 3),
          width: 450,
          height: 40,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Forgot password?",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }

}
