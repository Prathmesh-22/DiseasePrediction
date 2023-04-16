import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:med_app/util/first_time_user_reg.dart';
import 'package:med_app/util/get_started_screen.dart';
import 'package:med_app/util/doctorAppointment.dart';
import 'home_screen.dart';
import 'loginSignupPage/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
  // SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStarted(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
