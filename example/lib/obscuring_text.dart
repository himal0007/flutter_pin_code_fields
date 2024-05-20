import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Obscuring Text',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String pinCode = "...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Obscuring Text'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PinCodeFields(
              boxShadows: const [
                BoxShadow(
                  color: Colors.black12,
                  offset: const Offset(0, 1),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ),
              ],
              enabled: false,
              activeBackgroundColor: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(5),
              responsive: false,
              borderColor: Colors.white,
              fieldBorderStyle: FieldBorderStyle.square,
              fieldHeight: 50,
              fieldWidth: 40,
              length: 6,
              obscureText: true,
              obscureCharacter: "🔴",
              onComplete: (code) {
                setState(() {
                  pinCode = code;
                });
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "pin code: $pinCode",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
