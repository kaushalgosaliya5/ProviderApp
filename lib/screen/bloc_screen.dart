import 'package:flutter/material.dart';

class BLoCScreen extends StatefulWidget {
  const BLoCScreen({Key? key}) : super(key: key);

  @override
  State<BLoCScreen> createState() => _BLoCScreenState();
}

class _BLoCScreenState extends State<BLoCScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BLoC Api Call",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.purple,
          textColor: Colors.white,
          onPressed: () {},
          child: const Text('BLoC Api Call'),
        ),
      ),
    );
  }
}
