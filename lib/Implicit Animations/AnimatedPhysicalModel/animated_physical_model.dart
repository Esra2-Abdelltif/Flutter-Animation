import 'package:flutter/material.dart';

class AnimatedPhysicalModelWidget extends StatefulWidget {
  const AnimatedPhysicalModelWidget({super.key});

  @override
  State<AnimatedPhysicalModelWidget> createState() =>
      _AnimatedPhysicalModelWidgetState();
}

class _AnimatedPhysicalModelWidgetState extends State<AnimatedPhysicalModelWidget> {
  double elevation=0;
  Color color =Colors.red;
  Color shadowColor =Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Physical Model"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              elevation=20;
               color =Colors.deepPurple;
               shadowColor =Colors.grey;

            });
          },
          child: AnimatedPhysicalModel(

            shape: BoxShape.circle,
            elevation: elevation,
            color: color,
            shadowColor:shadowColor ,
            duration: const Duration(seconds: 1),
            child:  Container(
              height: 400,
              alignment: Alignment.center,
              child:  const Text("Animation",style: TextStyle(color: Colors.white),),
            ),


          ),
        ),
      ),
    );
  }
}
