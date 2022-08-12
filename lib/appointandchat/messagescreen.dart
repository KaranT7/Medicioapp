import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading:  IconButton(
            iconSize: 35,
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.deepOrange,
          title: Center(child: Text("Patient: Covid",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 21
          )))),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10),
            Align(alignment: Alignment.centerRight,
                child: Container(height: 35, width: 50,
                    margin: EdgeInsets.all(7),
                    child: Center(child: Text("Hey",style: text())),
                    decoration: decoration())),
            Align(alignment: Alignment.centerRight,
                child:Container(
                  margin: EdgeInsets.only(right: 9),
                  child: Text("Seen",style: TextStyle(fontStyle: FontStyle.italic,
                      color: Colors.black)),
                )),
            Align(alignment: Alignment.centerLeft,
                child: Container(height: 35, width: 70,
                    margin: EdgeInsets.all(7),
                    child: Center(child: Text("Hello",style: text())),
                    decoration: decoration1())),
            // Align(alignment: Alignment.centerLeft,
            //     child:Container(
            //       margin: EdgeInsets.only(left: 9),
            //       child: Text("Seen",style: TextStyle(fontStyle: FontStyle.italic,
            //           color: Colors.black)),
            //     )),
            //
            Align(alignment: Alignment.centerRight,
                child: Container(height: 70, width: 230,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    margin: EdgeInsets.all(7),
                    child: Center(child: Text("How's your treatment going of Covid?",style: text())),
                    decoration: decoration())),
            Align(alignment: Alignment.centerRight,
                child:Container(
                  margin: EdgeInsets.only(right: 9),
                  child: Text("Seen",style: TextStyle(fontStyle: FontStyle.italic,
                      color: Colors.black)),
                )),

            Align(alignment: Alignment.centerLeft,
                child: Container(height: 60, width: 145,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    margin: EdgeInsets.all(7),
                    child: Center(child: Text("Going pretty fine. HBU?",style: text())),
                    decoration: decoration1())),
            // Align(alignment: Alignment.centerLeft,
            //     child:Container(
            //       margin: EdgeInsets.only(left: 9),
            //       child: Text("Seen",style: TextStyle(fontStyle: FontStyle.italic,
            //           color: Colors.black)),
            //     )),
            //
            Align(alignment: Alignment.centerRight,
                child: Container(height: 60, width: 150,
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    margin: EdgeInsets.all(7),
                    child: Center(child: Text("Going good here too",style: text())),
                    decoration: decoration())),
            Align(alignment: Alignment.centerRight,
                child:Container(
                  margin: EdgeInsets.only(right: 9),
                  child: Text("Seen",style: TextStyle(fontStyle: FontStyle.italic,
                      color: Colors.black)),
                )),
         SizedBox(height: 155),// SizedBox(height:319),
           // SizedBox(height:245),
           // SizedBox(height:171),
        Container( color: Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                Expanded(child: TextField(
                  style: TextStyle(
                      color: Colors.black
                  ),
                  decoration: InputDecoration(
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                      hintText: "Type Message",
                      hintStyle: TextStyle(
                          color: Colors.black
                      ),))),
                SizedBox(width: 7),
                InkWell
                  (onTap: (){},
                    child: Icon(Icons.send))],
            ),)
          ]),
      ),
    );
  }
}

//widget declaration
BoxDecoration decoration(){
  return BoxDecoration(
     gradient:  LinearGradient(
         colors: [
           Colors.cyan.shade600,
           Colors.black.withOpacity(0.9),
         ]
     ),
      borderRadius: BorderRadius.circular(10)
  );
}

BoxDecoration decoration1(){
  return BoxDecoration(
      gradient:  LinearGradient(
          colors: [
            Colors.teal,
            Colors.black.withOpacity(0.8)
          ]
      ),
      borderRadius: BorderRadius.circular(10)
  );
}
TextStyle text(){
  return TextStyle(
      fontSize: 21,
      color: Colors.white,
      fontWeight: FontWeight.bold);
}