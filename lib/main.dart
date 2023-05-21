import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/counter_provider.dart';
import 'package:provider_app/provider/shopping_card_provider.dart';
import 'package:provider_app/screen/bloc_screen.dart';
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
        useMaterial3: true,
        primarySwatch: Colors.green,
      ),
      routes: {
        //'/': (context) => const FirstScreen(),
        //'/': (context) => const ButtonScreen(),
        //'/': (context) => const RowColumnScreen(),
        //'/': (context) => const ImageScreen(),
        //'/': (context) => const FancyAnimatedButtonScreen(),
        //'/': (context) => const FutureBuilderScreen(),
        //'/': (context) => const StreamBuilderScreen(),
        //'/': (context) => const GoogleFontsScreen(),
        '/': (context) => const BLoCScreen(),
        "/secondScreen": (context) => const SecondScreen(),
      },
    );
  }
} /**/
