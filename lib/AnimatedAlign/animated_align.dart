import 'package:flutter/material.dart';

class AnimatedAlignWidget  extends StatefulWidget {
  const AnimatedAlignWidget ({super.key});

  @override
  State<AnimatedAlignWidget > createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget > {
  AlignmentGeometry align = Alignment.topCenter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Align"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              align = Alignment.center;
            });
          },
          child: AnimatedAlign(
            alignment: align,
            duration: const Duration(seconds: 1),
            child: Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple,
            ),
          ),
        ),
      ),
    );
  }
}
