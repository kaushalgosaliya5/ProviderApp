import 'package:flutter/material.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  var isHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Screen"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          const Text('Text'),
          const Text(
            'Text - Green',
            style: TextStyle(color: Colors.green, fontSize: 20),
          ),
          const Text(
            'Text - Letter Spacing',
            style: TextStyle(color: Colors.green, letterSpacing: 10),
          ),
          const Text(
            'Text - Line Through',
            style: TextStyle(
                color: Colors.green, decoration: TextDecoration.lineThrough),
          ),
          TextButton(
            onHover: (value) {
              setState(() {
                isHover = !isHover;
              });
            },
            child: Text('Text Button IsHover - $isHover'),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Text Button Click'),
              ));
            },
          )
        ],
      ),
    );
  }
}
