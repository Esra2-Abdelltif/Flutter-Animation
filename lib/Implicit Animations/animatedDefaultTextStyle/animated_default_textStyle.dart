import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  const AnimatedDefaultTextStyleWidget({super.key});

  @override
  State<AnimatedDefaultTextStyleWidget> createState() =>
      _AnimatedDefaultTextStyleWidgetState();
}

class _AnimatedDefaultTextStyleWidgetState extends State<AnimatedDefaultTextStyleWidget> {
  double fontSize=20;
  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Default Text Style"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                fontSize=35;
                textColor=Colors.deepPurple;
              });
            },
            child: Center(
              child: AnimatedDefaultTextStyle(
                  style: TextStyle(fontSize: fontSize,color: textColor),
                  duration: const Duration(seconds: 2),
                  child: const Text("Esraa Abdellatif")),
            ),
          )
        ],
      ),
    );
  }
}
