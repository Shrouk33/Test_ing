import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testing/Pages/stomach_pain.dart';
import 'package:testing/firebase_options.dart';
import 'package:testing/physiotherapy_pages/Knee_pain.dart';
import 'package:testing/physiotherapy_pages/Leg_pain.dart';
import 'package:testing/physiotherapy_pages/Shoulder_pain.dart';
import 'package:testing/physiotherapy_pages/backpain.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home: stomach_pain(),
     // home: backpain(),
      home:  Knee_pain(),
    );
  }
}
