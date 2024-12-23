import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            //Logo
            Image.asset('lib/assets/imgs/mclaren_logo.png', height: 240,),
            //title
            //subtitle
            //start button
          ],
        ));
  }
}
