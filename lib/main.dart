import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_animation/Explicit%20Animations/Explicit%20Animations%20Exmple/explicit_animation.dart';
void main() {
  runApp((DevicePreview(
    enabled: true,
    builder: (context) => const MyApp(),
  )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animation',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.deepPurple,centerTitle: true,titleTextStyle: TextStyle(color: Colors.white) ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ExplicitAnimationsWidget(),
    );
  }
}

