import 'package:flutter/material.dart';
import 'package:dota_bible/heroesAttribute/heroesAttribute.dart';


ElevatedButton mainMenuButton(context, final dynamic page, final String text){
  return ElevatedButton(
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    style: ElevatedButton.styleFrom(
      minimumSize: const Size(1000, 30),
      elevation: double.infinity,
    ),
    child: Text(
      text,
      style: const TextStyle( color: Color.fromARGB(225,15,76,117))
    ),
  );
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        // Тема для основного заднего фона
        scaffoldBackgroundColor: const Color.fromARGB(225,27,38,44),

        // Тема для текста для основного текста
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white
           ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 25
          ),
          titleMedium: TextStyle(
            color: Color.fromARGB(225,15,76,117)
          )
        ),

        // Тема для ап бара
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(225,15,76,117),
        )
      ),
      home: const MyHomePage(title: 'Main'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Row(
          children : [
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child : Text(
                widget.title,
                style: Theme.of(context).textTheme.bodyLarge
              ),
            ),
            Text(
              '7.35c',
              style: Theme.of(context).textTheme.bodyLarge
            )
          ]
        )
      ),
      body: Center(child: ButtonBar(
        buttonPadding: const EdgeInsetsDirectional.symmetric(horizontal: 100, vertical: 10),
        alignment: MainAxisAlignment.center,
        buttonMinWidth: 100,
        children: [
          mainMenuButton(context, heroes_strength(), 'Heroes'),
          mainMenuButton(context, heroes_strength(), 'Heroes'),
          mainMenuButton(context, heroes_strength(), 'Heroes'),
          mainMenuButton(context, heroes_strength(), 'Heroes'),
        ],
      )
    ));
  }
}