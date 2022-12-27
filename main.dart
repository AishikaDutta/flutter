import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    title:"Make it Rain",
    home: MakeItRain(),
  )
  );
}
class MakeItRain extends StatefulWidget
{
  State<StatefulWidget> createState()
  {
    return MakeItRainState();
  }
}
class MakeItRainState extends State<MakeItRain>
{
  int moneyCounter=100;
  void rainMoney()
  {
    setState(() {
      moneyCounter=moneyCounter+100;
      updateState();
    });
  }
  double width1=400;
  double height1=200;
  Color color1=Colors.redAccent;
  double? updateState()
  {
    setState(() {
      width1=1000;
      height1=1200;
      color1=Colors.black;
    });
  }
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor:color1,
      appBar: AppBar(
        title: Text("Helooo"),
        backgroundColor: Colors.yellow,
      ),
      body: AnimatedContainer(
        width: width1,
        height: height1,
        duration:Duration(seconds: 15),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Center(
                  child: Text(
                    "how are you",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
            ),
            Expanded(
                child: Center(
                  child: Text(
                    "INR$moneyCounter",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
            ),
            Expanded(
                child: Center(
                  child: TextButton(
                     style: TextButton.styleFrom(
                       backgroundColor: Colors.green,
                     ),
                    onPressed: rainMoney,
                    child: Text(
                        "Hello to All",
                      style: TextStyle(
                        fontSize: 19.9,
                      ),
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}