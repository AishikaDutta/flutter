import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      theme: new ThemeData(
        primaryColorBrightness: Brightness.dark
      ),
      home:Scaffold(
        appBar: AppBar(
          title: Text('SnackBar'),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}
class SnackBarPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Click Here', style: TextStyle(fontSize: 21.0),),
        textColor: Colors.black,
        color: Colors.yellow,
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('This is SnackBar'),
            duration: Duration(seconds: 4),
            action: SnackBarAction(
              label: 'undo',
              onPressed: () {
                print('It is undone');
              },
            ),
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}