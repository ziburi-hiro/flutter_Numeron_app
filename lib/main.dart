import 'package:flutter/material.dart';

import 'second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Numer0n English Word Ver'),
        backgroundColor: Colors.black, //背景の色を変更
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('image/numeron.jpg'),
            const Text('ゲームスタート',style: TextStyle(color: Colors.white,fontSize: 32),),
            //ボタンを配置
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SecondPage()
                ));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 75),
                backgroundColor: Colors.amberAccent,
                side: const BorderSide(
                  color: Colors.red,
                  width: 5,
                ),
              ),
              child: const Text('Play Game!!!',style: TextStyle(color: Colors.black,fontSize: 30),),
            ),
          ],
        ),
      ),
    );
  }
}

