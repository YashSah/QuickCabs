import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yumrush/firebase_options.dart';
import 'package:yumrush/screens/login_screen.dart';
import 'package:yumrush/screens/main_screen.dart';
import 'package:yumrush/screens/register_screen.dart';
import 'package:yumrush/splashScreen/splash_screen.dart';
import 'package:yumrush/themeProvider/theme_provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      home: SplashScreen(),
    );
  }
}
