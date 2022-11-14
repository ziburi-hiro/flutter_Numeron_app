import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  String _outputText = "";

  void _handleOutputText(String inputText){
    setState(() {
      _outputText = inputText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Guess the English Word!!!',style: TextStyle(fontSize: 24),),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('CPU decide word!',style: TextStyle(color: Colors.red,fontSize: 32),),
            Text('Decide your word to Answer',style: TextStyle(color: Colors.red,fontSize: 32),),
            Text('$_outputText',style: TextStyle(color: Colors.blue,fontSize: 30.0),),
            TextField(
              obscureText: false, //文字を隠さない
              maxLength: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Answer Word',
                hintText: 'You can write here!',
                helperText: 'All lowercase & No duplicate characters',
              ),
              onChanged: _handleOutputText,
            )
          ],
        ),
      ),
    );
  }
}