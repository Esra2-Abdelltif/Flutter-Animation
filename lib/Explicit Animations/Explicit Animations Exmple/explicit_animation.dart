
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/animation.dart';

class ExplicitAnimationsWidget extends StatefulWidget {
  const ExplicitAnimationsWidget({super.key});

  @override
  State<ExplicitAnimationsWidget> createState() =>
      _ExplicitAnimationsWidgetState();
}

class _ExplicitAnimationsWidgetState extends State<ExplicitAnimationsWidget> with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<AlignmentGeometry> alignController;
  late Animation<double> rotateController;

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 2),)..repeat(reverse: true);
    alignController = Tween<AlignmentGeometry>(
      end: Alignment.centerLeft,
      begin: Alignment.centerRight,
    ).animate(controller);
    rotateController = Tween<double>(begin: 0, end: 2).animate(controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Builder"),
      ),
      body: Container (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AlignTransition(
                alignment: alignController,
                child:RotationTransition(turns: rotateController,child:  Container(
                  color: Colors.deepPurple,
                  height: 50,
                  width: 50,
                ),))
          ],
        ),
      ),
    );
  }
}
