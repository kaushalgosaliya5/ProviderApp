import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/shopping_card_provider.dart';

import 'provider/counter_provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Column(
        children: [
          Text('${context.watch<Counter>().count}'),
          Text('${context.watch<ShoppingCart>().count}'),
          Text('${context.watch<ShoppingCart>().cart}')
        ],
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key("additemshoppingcard"),
        onPressed: () => context.read<ShoppingCart>().addItem('TShirt'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
