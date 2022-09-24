import 'package:counter_app/bottombar.dart';
import 'package:counter_app/providers/counter1_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => Counter(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      // theme: ThemeData(
      //   primarySwatch: Colors.green,
      // ),
      home: const Bottombar(),
    );
  }
}
