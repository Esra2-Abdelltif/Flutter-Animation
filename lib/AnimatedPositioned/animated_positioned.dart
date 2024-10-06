import 'package:flutter/material.dart';

class AnimatedPositionedWidget extends StatefulWidget {
  const AnimatedPositionedWidget({super.key});

  @override
  State<AnimatedPositionedWidget> createState() =>
      _AnimatedPositionedWidgetState();
}

class _AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {
  double leftValue=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Positioned"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              leftValue=50;

            });
          },
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.deepPurple,
              ),
              AnimatedPositioned(
                duration: const Duration(seconds: 1),
                left: leftValue,
                top: leftValue,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
