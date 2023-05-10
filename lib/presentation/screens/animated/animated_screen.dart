import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  static const name = 'animated_Screen';

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double height = 50;
  Color color = const Color.fromRGBO(0, 0, 0, 0);
  double borderRedius = 20.0;

  void changeShape() {
    final random = Random();

    width = random.nextInt(400) * 1;
    height = random.nextInt(400) * 1;
    borderRedius = random.nextInt(100) * 1;
    color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        random.nextDouble(),
        // 1
        );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeShape,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Animate Container'),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOutCubic,
            width: width,
            height: height,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(borderRedius)),
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: changeShape,
        //   child: const Icon(Icons.play_arrow_rounded),
        // ),
      ),
    );
  }
}
