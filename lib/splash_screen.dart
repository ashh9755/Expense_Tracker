// import 'package:flutter/material.dart';
// import 'expenses.dart';
// import 'package:xpensetracker/main.dart'; // Assuming 'main.dart' is where your main app widget is defined

// void main() {
//   runApp(
//     MaterialApp(
//       home: SplashScreen(), // Set the SplashScreen as the initial screen
//     ),
//   );
// }

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
    
//     // Delay navigation to the main screen by 5 seconds
//     Future.delayed(Duration(seconds: 5), () {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(
//           builder: (context) => Expenses(), // Navigate to your main screen here
//         ),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text('Your App Name'), // You can customize this to display your app's name or logo
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'startscreen.dart';

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();

//     // Delay navigation to the main screen by 5 seconds
//     Future.delayed(Duration(seconds: 5), () {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(
//           builder: (context) => Startview(), // Navigate to your Startview widget
//         ),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color.fromARGB(255, 251, 208, 218),
//               Color.fromARGB(255, 251, 208, 218),
//             ],
//           ),
//         ),
//         child: Center(
//           child: Startview(), // Display the content from your Startview widget
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:xpensetracker/main.dart'; // Import the main screen file (adjust the import path as needed)
// import 'expenses.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: SplashScreen(), // Set the SplashScreen as the initial screen
//     ),
//   );
// }

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();

//     // Delay navigation to the main screen by 5 seconds
//     Future.delayed(Duration(seconds: 5), () {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(
//           builder: (context) => Expenses(), // Navigate to your main screen (e.g., Expenses)
//         ),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color.fromARGB(255, 251, 208, 218),
//               Color.fromARGB(255, 251, 208, 218),
//             ],
//           ),
//         ),
//         child: Center(
//           child: Startview(), // Display the content from your Startview widget
//         ),
//       ),
//     );
//   }
// }

// class Startview extends StatefulWidget {
//   @override
//   State<Startview> createState() {
//     return _StartScreen();
//   }
// }

// class _StartScreen extends State<Startview> {
//   @override
//   Widget build(context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.asset(
//             'images/asset/logoex.png',
//           ),
//           const SizedBox(
//             height: 30,
//           ),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.of(context).pushReplacement(
          //       MaterialPageRoute(
          //         builder: (context) => Expenses(), // Navigate to your main screen
          //       ),
          //     );
          //   },
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
          //   onPressed: () {
          //     Navigator.of(context).pushReplacement(
          //       MaterialPageRoute(
          //         builder: (context) => Expenses(), // Navigate to your main screen
          //       ),
          //     );
          //   },
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: const Color.fromARGB(255, 95, 7, 28),
          //     padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          //   ),
          //   child: const Text("Log-in"),
          // ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'expenses.dart';

void main() {
  runApp(
    MaterialApp(
      home: SplashScreen(), // Set the SplashScreen as the initial screen
    ),
  );
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    // Delay navigation to the main screen by 5 seconds
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const Expenses(), // Navigate to your main screen here
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('images/asset/logoex.png'), // Display your image here
      ),
    );
  }
}
