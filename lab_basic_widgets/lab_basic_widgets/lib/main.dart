import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic Widgets',
      home: BasicWidgetsDemo(),
    );
  }
}

class BasicWidgetsDemo extends StatefulWidget {
  @override
  _BasicWidgetsDemoState createState() => _BasicWidgetsDemoState();
}

class _BasicWidgetsDemoState extends State<BasicWidgetsDemo> {
  TextEditingController _controller = TextEditingController();
  String? errorText;
  String name = 'Welcome to Basic Flutter';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder(),
                  errorText: errorText,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _inputValidate,
                child: Text('Submit'),
              ),
            ]),
      ),
    );
  }

  void _inputValidate() {
    setState(() {
      if (_controller.text.isEmpty) {
        errorText = 'Please enter your name';
      } else {
        name = _controller.text;
        errorText = null;
      }
    });
  }
}
