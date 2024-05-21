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
              //margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              boxShadows: const [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.black12,
                  blurRadius: 5,
                ) //BoxShadow
                // const BoxShadow(
                //   color: Colors.white,
                //   offset: Offset(0.0, 0.0),
                //   blurRadius: 0.0,
                //   spreadRadius: 0.0,
                // ),
              ],
              enabled: true,
              activeBackgroundColor: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(30),
              responsive: false,
              fieldBackgroundColor: Colors.black,
              borderColor: Colors.white,
              fieldBorderStyle: FieldBorderStyle.square,
              fieldHeight: 20,
              fieldWidth: 20,
              length: 6,
              obscureText: true,
              obscureWidget: Container(
                decoration: const BoxDecoration(
                    color: Colors.blue, shape: BoxShape.circle),
              ),
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
