import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20 , horizontal: 15),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Sign in",
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
          ),
          SizedBox(height: 10),
          Text(
            "Please log in to your account",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 100),
          TextField(

            decoration: InputDecoration(

              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 30),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 80),
          Center(
            child: SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius:
                    BorderRadius.circular(12),
                )
              ),
                onPressed: () {
                  print("sign in pressed");
                },
                child: Text('Sign in', style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),),
              )
            ),
          ),
        SizedBox(height: 80,),
        Center(
          child: SizedBox(
            width: double.infinity,
            height: 55,
            child: OutlinedButton.icon( style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,

                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(12),
                )
            ),
              onPressed: () {
                print("Signed in with Google");
              },
              icon: FaIcon(
                FontAwesomeIcons.google,
                color: Colors.blue,
                size: 18,
              ),
              label: Text(
                'Sign in with Google',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 19,
              ),),
            ),
          ),
      ),
        SizedBox(height: 20,),
        Center(
          child: SizedBox(
            width: double.infinity,
            height: 55,
            child: OutlinedButton.icon( style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,

                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(12),
                )
            ),
              onPressed: () {
                print("Signed in with Facebook");
              },
              icon: FaIcon(
                FontAwesomeIcons.facebook,
                color: Colors.blue,
                size: 18,
              ),
              label: Text(
                'Sign in with Facebook',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 19,
              ),),
            ),
          ),
        ),
        ],
      ),
      ),
    );
  }
}