import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isSecure = true;

  void change() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Password'),
      ),
      body: Center(
        child: TextField(
          obscureText: _isSecure,
          //obscuringCharacter: '*',
          autofillHints: [AutofillHints.password],
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            hintText: 'Password',
            suffix: IconButton(
              onPressed: () {
                change();
              },
              icon: Icon(Icons.visibility),
            ),
          ),
        ),
      ),
    );
  }
}
