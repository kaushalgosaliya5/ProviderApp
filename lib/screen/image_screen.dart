import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Image Screen'),
      ),
      body: Column(
        children: [
          Image.asset("asset/image/myimage.png"),
          Image.network(
              'https://tse2.mm.bing.net/th?id=OIP.uOmC2pnMSHJdHj463qDegwHaF7&pid=Api&P=0&h=180'),
        ],
      ),
    );
  }
}
