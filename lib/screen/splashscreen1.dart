import 'package:app_cosmetic/screen/splashscreen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen1(),
    );
  }
}

class Splashscreen1 extends StatelessWidget {
  const Splashscreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              Image.asset(
                "assets/splash2.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => Splashscreen2()),
                      );
                    },
                    child: Text(
                      'Get Start',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
