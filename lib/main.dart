import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dataProvider.dart';
import 'homePage.dart';

/*
  Flutter SDK: v3.19.0
*/

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DataProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(225, 27, 38, 44),
          textTheme: const TextTheme(
              bodyMedium: TextStyle(color: Colors.white),
              bodyLarge: TextStyle(color: Colors.white, fontSize: 25),
              titleMedium: TextStyle(color: Color.fromARGB(225, 15, 76, 117))),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(225, 15, 76, 117),
          )),
      home: const MyHomePage(title: 'Main'),
    );
  }
}
