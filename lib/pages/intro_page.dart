import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrange[500],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Logo
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Image.asset(
                    'lib/images/logo.png',
                    height: 100,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),

                //title
                Text("Fearlessly Forward",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                const SizedBox(
                  height: 20,
                ),

                //subtitle
                Text(
                  "Brand New High speed Super-Cars made with custom materials of premium quality",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),

                //start button
                GestureDetector(
                  // onTap: () => Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => HomePage(),
                  //     ),),

                  onTap: () {
                    Navigator.pushNamed(context, '/homepage');
                  },

                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: const Center(
                        child: Text("Start Shopping",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
