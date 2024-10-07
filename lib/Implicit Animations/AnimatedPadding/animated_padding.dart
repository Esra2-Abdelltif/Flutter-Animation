import 'package:flutter/material.dart';

class AnimatedPaddingWidget extends StatefulWidget {
  const AnimatedPaddingWidget({super.key});

  @override
  State<AnimatedPaddingWidget> createState() =>
      _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  double paddingValue=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Padding"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              paddingValue=30;

            });
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.deepPurple,
            child: AnimatedPadding(
              duration:const Duration(seconds: 2),
              padding:  EdgeInsets.all(paddingValue),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.yellow,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
