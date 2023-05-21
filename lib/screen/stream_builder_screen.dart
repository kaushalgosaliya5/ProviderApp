import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderScreen extends StatefulWidget {
  const StreamBuilderScreen({Key? key}) : super(key: key);

  @override
  State<StreamBuilderScreen> createState() => _StreamBuilderScreenState();
}

class _StreamBuilderScreenState extends State<StreamBuilderScreen> {
  Stream<String> getStream() async* {
    while (true) {
      await Future<void>.delayed(const Duration(seconds: 1));
      DateTime dateTime = DateTime.now();
      yield "${dateTime.hour % 12} : ${dateTime.minute} : ${dateTime.second}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream Builder Stream"),
        backgroundColor: Colors.amber,
      ),
      body: StreamBuilder(
          stream: getStream(),
          builder: (context, AsyncSnapshot<String> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              return Center(
                child: Text(
                  snapshot.data!,
                  style: const TextStyle(fontSize: 50, color: Colors.green),
                ),
              );
            }
          }),
    );
  }
}
