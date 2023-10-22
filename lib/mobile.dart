import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_responsive/constants.dart';

import 'adaptive_indicator.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.teal,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login With Your Account',style: Theme.of(context).textTheme.headline4,),
                  SizedBox(height: 15),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Address',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 45,
                          color: Colors.teal,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Container(
                          height: 45,
                          color: Colors.blue,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Center(child: AdaptiveIndicator(getOS())),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
