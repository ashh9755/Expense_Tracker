import 'package:flutter/material.dart';

class Startview extends StatefulWidget {
  const Startview({super.key});

  @override
  State<Startview> createState() {
    return _StartScreen();
  }
}

class _StartScreen extends State<Startview> {
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'images/asset/logoex.png',
        ),
        // TextButton(onPressed: () {}, child: Text("Sign up"),),
        const SizedBox(
          height: 30,
        ),
        // ElevatedButton(
        //   onPressed: () {},
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: const Color.fromARGB(255, 95, 7, 28),
        //     padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        //   ),
        //   child: const Text("Sign up"),
        // ),
        // const SizedBox(
        //   height: 20,
        // ),
        // ElevatedButton(
        //   onPressed: () {},
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: const Color.fromARGB(255, 95, 7, 28),
        //     // shape: CircleBorder(),
        //     padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        //   ),
        //   child: const Text("Log-in"),
        // ),
        // OutlinedButton(onPressed: () {}, child: Text("Sign up"),),
      ],
    ));
  }
}
