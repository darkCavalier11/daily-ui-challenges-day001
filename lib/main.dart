import 'package:day001/textField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            const SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                'Signup',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Column(
                children: [
                  CustomTextField(
                    labelText: 'Fullname',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    labelText: 'Email',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    labelText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    labelText: 'Renter password',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.deepPurpleAccent,
                    ),
                    width: double.infinity,
                    height: 65,
                    child: InkWell(
                      child: Center(
                        child: Text(
                          'Let\'s go',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Signin',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurpleAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.google,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        Text('|'),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Terms and conditions',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
