import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foode/views/views_shelf.dart';
import 'package:provider/provider.dart';
import 'core/core_shelf.dart' as core;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await core.LocalManager.prefrencesInit();

  runApp(
    MultiProvider(
      providers: [...?core.AppProviders.instance?.dependItems],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context, core.ThemeProvider theme, Widget? child) {
      bool dark = theme.isDark;
      return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: dark ? Brightness.light : Brightness.light,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarIconBrightness:
              dark ? Brightness.light : Brightness.light,
        ),
        child: MaterialApp(
          title: 'Bakery Name',
          debugShowCheckedModeBanner: false,
          home:
              // StreamBuilder<User?>(
              //     stream: FirebaseAuth.instance.authStateChanges(),
              //     builder: (context, snapshot) {
              //       if (snapshot.hasData) {
              //         return MainPage();
              //       } else {
              //         return SplashScreen();
              //       }
              //     })
              SplashScreen(),
        ),
      );
    });
  }
}
