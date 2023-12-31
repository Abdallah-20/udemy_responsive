import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveIndicator extends StatelessWidget {
  String os;

  AdaptiveIndicator(this.os);

  @override
  Widget build(BuildContext context) {
    if(os == 'android') {
      return const CircularProgressIndicator();
    }
    return const CupertinoActivityIndicator();
  }
}
