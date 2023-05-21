import 'package:flutter/material.dart';

class FutureBuilderScreen extends StatefulWidget {
  const FutureBuilderScreen({Key? key}) : super(key: key);

  @override
  State<FutureBuilderScreen> createState() => _FutureBuilderScreenState();
}

class _FutureBuilderScreenState extends State<FutureBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Future Builder Screen'),
          backgroundColor: Colors.teal),
      body: FutureBuilder(
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              var data = snapshot.data as String;
              return Center(
                child: Text(
                  data,
                  style: const TextStyle(fontSize: 18),
                ),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text(
                  "Error",
                  style: TextStyle(fontSize: 18),
                ),
              );
            }
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        future: getData(),
      ),
    );
  }

  Future<String> getData() {
    return Future.delayed(const Duration(seconds: 2), () {
      return "I am Kaushal Gosaliya";
    });
  }
}
