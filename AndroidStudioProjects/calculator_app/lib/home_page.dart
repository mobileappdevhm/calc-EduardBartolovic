import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();

}


class HomePageState extends State<HomePage>{

  var num1 = 0.0 ,num2 = 0.0 ,sum = 0.0 ;

  final TextEditingController t1 = new TextEditingController(text: '0');
  final TextEditingController t2 = new TextEditingController(text: '0');


  void addition(){
    this.setState((){
      num1= double.parse(t1.text);
      num2= double.parse(t2.text);

      sum = num1 + num2;
    });
  }

  void subtraction(){
    this.setState((){
      num1= double.parse(t1.text);
      num2= double.parse(t2.text);

      sum = num1 - num2;
    });
  }

  void multiplication(){
    this.setState((){
      num1= double.parse(t1.text);
      num2= double.parse(t2.text);

      sum = num1 * num2;
    });
  }

  void division(){
    this.setState((){
      num1= double.parse(t1.text);
      num2= double.parse(t2.text);

      sum = num1 / num2;
    });
  }

  void clear(){
    this.setState((){
      t1.text = '0';
      t2.text = '0';
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar( title: new Text('Calculator'), ),
      body: new Container(
          padding: const EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('Output: $sum ',
                style: new TextStyle( fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration( hintText: 'Enter Number'),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration( hintText: 'Enter Number'),
                controller: t2,
              ),
              new Padding(
                padding: const EdgeInsets.only(top:15.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text('+'),
                    color: Colors.yellow,
                    onPressed: addition,
                  ),
                  new MaterialButton(
                    child: new Text('-'),
                    color: Colors.yellow,
                    onPressed: subtraction,
                  ),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top:10.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text('*'),
                    color: Colors.yellow,
                    onPressed: multiplication,
                  ),
                  new MaterialButton(
                    child: new Text('/'),
                    color: Colors.yellow,
                    onPressed: division,
                  ),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top:10.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text('reset'),
                    color: Colors.red,
                    onPressed: clear,
                  ),
                ],
              )
            ],
          ),
      ),

    );
  }
}