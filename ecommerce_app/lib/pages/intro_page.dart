import 'package:ecommerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(250, 58, 134, 255),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // logo or picture
                const Image(
                  image: AssetImage('assets/img/nike.png'),
                  color: Colors.white,
                ),
                // app name
                const Text(
                  "Whimsy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 120,
                    fontFamily: "Zeyada",
                  ),
                ),
                // sub-heading or slogan
                const Text(
                  "Shop with ease, \nfind what you please !",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: "Pixelify"),
                ),
                const SizedBox(
                  height: 100,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage())),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.white,
                      ),
                      color: Colors.black,
                    ),
                    height: 50,
                    width: 200,
                    alignment: Alignment.center,
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Pixelify",
                          fontSize: 28),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
