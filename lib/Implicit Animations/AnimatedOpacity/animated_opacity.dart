import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  State<AnimatedOpacityWidget> createState() =>
      _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double opacity=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Opacity"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                opacity=0;

              });
            },
            child: Center(
              child: AnimatedOpacity(
                curve: Curves.easeInBack,
                duration: const Duration(seconds: 1),
                opacity: opacity,//  [0,1]
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
