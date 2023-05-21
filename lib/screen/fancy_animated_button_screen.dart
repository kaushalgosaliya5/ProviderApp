import 'package:fancy_animated_button/fancy_animated_button.dart';
import 'package:flutter/material.dart';

class FancyAnimatedButtonScreen extends StatelessWidget {
  const FancyAnimatedButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fancy Animated Button Screen'),
        backgroundColor: Colors.cyan,
      ),
      body: FancyAnimatedButton(onClick: () {}),
    );
  }
}
