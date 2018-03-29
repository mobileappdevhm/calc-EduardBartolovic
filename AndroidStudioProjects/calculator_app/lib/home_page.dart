import 'package:flutter/material.dart';
//import 'package:math_expression/math_expression.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();

}


class HomePageState extends State<HomePage>{

  var num1 = 0.0 ,num2 = 0.0 ,sum = 0.0 ;

  final TextEditingController text = new TextEditingController(text: '');


  void doMath(){
    this.setState((){
      //Parser parser = new Parser();

      text.text = "hall";
    });
  }

  void addElement(String element){
    this.setState((){
      text.text += element;
    });
  }
  void clear(){
    this.setState((){
      text.text = "";
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
                decoration: new InputDecoration( hintText: 'Enter Number'),
                controller: text,
              ),
              new Padding(
                padding: const EdgeInsets.only(top:15.0),
              ),
              new MaterialButton(
                child: new Text('!'),
                color: Colors.yellow,
                onPressed: doMath,
              ),
              new Padding(
                padding: const EdgeInsets.only(top:15.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text('1'),
                    color: Colors.yellow,
                    onPressed: () => addElement("1"),
                  ),
                  new MaterialButton(
                    child: new Text('2'),
                    color: Colors.yellow,
                    onPressed: () => addElement("2"),
                  ),
                  new MaterialButton(
                    child: new Text('3'),
                    color: Colors.yellow,
                    onPressed: () => addElement("3"),
                  ),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top:10.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text('4'),
                    color: Colors.yellow,
                    onPressed: () => addElement("4"),
                  ),
                  new MaterialButton(
                    child: new Text('5'),
                    color: Colors.yellow,
                    onPressed: () => addElement("5"),
                  ),
                  new MaterialButton(
                    child: new Text('6'),
                    color: Colors.yellow,
                    onPressed: () => addElement("6"),
                  ),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top:10.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text('7'),
                    color: Colors.yellow,
                    onPressed: () => addElement("7"),
                  ),
                  new MaterialButton(
                    child: new Text('8'),
                    color: Colors.yellow,
                    onPressed: () => addElement("8"),
                  ),
                  new MaterialButton(
                    child: new Text('9'),
                    color: Colors.yellow,
                    onPressed: () => addElement("9"),
                  ),

                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top:10.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text('0'),
                    color: Colors.yellow,
                    onPressed: () => addElement("0"),
                  ),
                  new MaterialButton(
                    child: new Text('+'),
                    color: Colors.yellow,
                    onPressed: () => addElement("+"),
                  ),
                  new MaterialButton(
                    child: new Text('-'),
                    color: Colors.yellow,
                    onPressed: () => addElement("-"),
                  ),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top:10.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text('/'),
                    color: Colors.yellow,
                    onPressed: () => addElement("/"),
                  ),
                  new MaterialButton(
                    child: new Text('*'),
                    color: Colors.yellow,
                    onPressed: () => addElement("*"),
                  ),
                  new MaterialButton(
                    child: new Text('X'),
                    color: Colors.yellow,
                    onPressed: clear,
                  ),
                ],
              ),
            ],
          ),
      ),

    );
  }
}