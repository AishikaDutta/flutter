import 'package:flutter/material.dart';
void main()
{runApp(MyApp());}
class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title:'Single Widget Layout',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Scaffold(

      body: Center(
        child: Container(
          height: 500.0,
          width: 400.0,
          color: Colors.pink,
        ),
      ),
    );
  }
}