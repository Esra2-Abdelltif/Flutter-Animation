import 'package:flutter/material.dart';

class AnimatedSizeWidget extends StatefulWidget {
  const AnimatedSizeWidget({super.key});

  @override
  State<AnimatedSizeWidget> createState() => _AnimatedSizeWidgetState();
}

class _AnimatedSizeWidgetState extends State<AnimatedSizeWidget> {
  double width = 200;
  double height = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Size"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              height = 300;
              width = 300;
            });
          },
          child: AnimatedSize(
            duration: const Duration(seconds: 1),
            child: Container(
              height: height,
              width: width,
              color: Colors.deepPurple,
            ),
          ),
        ),
      ),
    );
  }
}
