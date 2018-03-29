import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();

}


class HomePageState extends State<HomePage>{
  
  String text = "";

  void doMath(){
    this.setState((){
      try{
        Parser p = new Parser();
        Expression exp = p.parse(text);
        final double result = exp.evaluate(EvaluationType.REAL,new ContextModel());
        text = "$result";
      }catch(exe){ // if userinpur was wrong
        text = "Syntax Error";
      }

    });
  }

  void addElement(String element){
    this.setState((){
      text += element;
    });
  }
  void clear(){
    this.setState((){
      text = "";
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
              new Text('$text ',
                style: new TextStyle( fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              new Padding(
                padding: const EdgeInsets.only(top:15.0),
              ),
              new MaterialButton(
                child: new Text('='),
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
                    child: new Text('CLEAR'),
                    color: Colors.red,
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