import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MakeItRainState ();
  }

}

class MakeItRainState extends State {
  int amount=0;

  get getColor{
    if(amount <1000)
      return Colors.red;
    if(amount<5000&&amount>1000)
      return Colors.deepOrange;
    else
      return Colors.pink;
  }

  String get text {
    {
      if(amount <1000)
        return "Poor!";
      if(amount<5000&&amount>1000)
        return "Middle Class!";
      else
        return "Rich!";
    }
  }
   increment(){
    setState(() {
      amount= amount+100;
    });

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Rain!"),
        backgroundColor: Colors.green,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
               child: new Text("Get Rich",
                  style: new TextStyle(fontWeight: FontWeight.w400,fontSize: 29.9,color: getColor),)
            ),
            new Expanded(
              child: new Center(
                child: new Text('\$'+amount.toString(),style: new TextStyle(fontWeight: FontWeight.w800,color: Colors.green,fontSize: 49.9),),
              ),
            ),
            new Expanded(
                child:new Center(
                  child: new Text(text,style: new TextStyle(fontSize: 34.9,fontStyle: FontStyle.italic,fontWeight: FontWeight.w400,color: getColor),),
                )
            )
            ,
            new FlatButton(
                color: Colors.green,
                textColor: Colors.pink,
                onPressed: increment,
                child: new Text("Let It Rain",style: new TextStyle(fontSize: 19.9),),
              ),


          ],

        ),
        color: Colors.greenAccent,
      ),
    );
  }
}