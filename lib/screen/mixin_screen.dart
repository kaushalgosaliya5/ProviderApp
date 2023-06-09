import 'package:flutter/material.dart';

class MixinScreen extends StatefulWidget {
  const MixinScreen({Key? key}) : super(key: key);

  @override
  State<MixinScreen> createState() => _MixinScreenState();
}

mixin CounterIncrease {
  void increaseCounter() {
    print("Increase Counter");
  }
}

mixin CounterDecrease {
  void decreaseCounter() {
    print("Decrease Counter");
  }
}

class _MixinScreenState extends State<MixinScreen>
    with CounterIncrease, CounterDecrease {
  @override
  void decreaseCounter() {
    // TODO: implement decreaseCounter
    super.decreaseCounter();
  }

  @override
  void increaseCounter() {
    // TODO: implement increaseCounter
    super.increaseCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Mixin Screen'),
      ),
      body: Container(
        child: MaterialButton(
          onPressed: () {},
          child: const Text(
            'Click',
            style: TextStyle(color: Colors.brown),
          ),
        ),
      ),
    );
  }
}
