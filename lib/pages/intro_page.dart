import 'package:flutter/material.dart';
import 'package:login/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Colors. black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset(
                'images/bg.jpg',
              height: 240,
              width: 300,
          ),
                ),
                const SizedBox(height: 40),
              // title
             const Text(
              'Frag some shoes now',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
              const SizedBox(height: 10),


              const Text(
                'Order Some Sneakers Online',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              // sub title

              // start now button
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> HomePage(),)),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)
                  ),padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: const Text('Shop Now',
                    style: TextStyle(
                      color: Colors.black,
                          fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),),
                  ),
                  ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}