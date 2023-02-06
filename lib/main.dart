import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:top_project/presentaion/screens/login_screen.dart';
import 'package:top_project/presentaion/screens/register_screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      //   primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
                color: Colors.black
            ),
            backwardsCompatibility :false,

            backgroundColor: Colors.white,
            elevation: 0.0,
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold

            )
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          // selectedItemColor: Colors.redAccent,
          type: BottomNavigationBarType.fixed,

        )
    ),
    home:Login(),
  ));
}

