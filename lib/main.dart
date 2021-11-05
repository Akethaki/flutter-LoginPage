import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Login App',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Flutter Demo Home Page', style: TextStyle(fontSize: 20, color: Colors.black),),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: [
            Column(
              children: [
                SizedBox(height: 80,),
                Image.asset('assests/login.jpg', height: 200, width: 200,),
                SizedBox(height: 20,),
                Text('angela yu', style: TextStyle(
                  fontSize: 85, 
                  color: Colors.tealAccent[700],
                  fontFamily: 'Pacifico')),
                Text('FLUTTER DEVELOPER', style: TextStyle(fontSize: 20, color: Colors.tealAccent[700]),),
              ],
            ),

            SizedBox(height: 20.0,),
            Container(
              // width: 50.0,
              margin: const EdgeInsets.only(right: 10, left: 10),
              child: const TextField(
                decoration: InputDecoration(
                  // contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                  prefixIcon: Icon(Icons.add_call),
                  // icon: Icon(Icons.add_call),
                  filled: true,
                  
                )
              ),
            ),

            SizedBox(height: 20.0,),
            Container(
              // width: 50.0,
              margin: const EdgeInsets.only(right: 10, left: 10),
              child: const TextField(
                decoration: InputDecoration(
                  // contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                  prefixIcon: Icon(Icons.email_rounded),
                  // icon: Icon(Icons.add_call),
                  filled: true,
                  
                )
              ),
            )
          ],
        ))
    );
  }
}