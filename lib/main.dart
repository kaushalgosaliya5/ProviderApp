import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/counter_provider.dart';
import 'package:provider_app/provider/shopping_card_provider.dart';
import 'package:provider_app/screen/first_screen.dart';
import 'package:provider_app/screen/second_page.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => Counter()),
    ChangeNotifierProvider(create: (_) => ShoppingCart())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const FirstScreen(),
        "/secondScreen": (context) => const SecondScreen(),
      },
    );
  }
}
