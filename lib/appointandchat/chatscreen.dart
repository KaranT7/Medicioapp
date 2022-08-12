import 'package:finalmedicio/appointandchat/messagescreen.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final diseasefield = TextFormField(
      autofocus: false,
      //controller: namecontroller,
      onSaved: (value){
        //namecontroller.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Enter Disease Name",
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );

    return Scaffold(
      appBar: AppBar(
          leading:  IconButton(
            iconSize: 35,
            icon: Icon(Icons.arrow_back),
            onPressed: (){
            Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.redAccent,
          title: Center(child: Text("Medicio",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 21
          )))),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: <Widget>[
              diseasefield,
              SizedBox(height: 15,),
              Container(
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text("Search",style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold
                  )),
                ),
              ),
              SizedBox(height: 15),
              // Center(
              //   child: Text("Disease Not Found", style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 21,
              //       fontWeight: FontWeight.bold
              //   ) ),
              // )
              Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.red.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                child: Container(
                  child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Patient: Covid",style: TextStyle(
                            color: Colors.black87,
                            fontSize: 21,
                            fontWeight: FontWeight.bold
                        )),
                        SizedBox(width: 90),
                        InkWell(
                          onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MessageScreen()));},
                          child: Container(
                            height: 35,
                              width: 100,
                              decoration: BoxDecoration(color: Colors.deepPurpleAccent,
                                  borderRadius: BorderRadius.circular(5)),
                              child:  Center(
                                child: Text("Message",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                )),
                              )),
                        )
                      ]),
                )),
            ]),
        ),
      ));
  }
}

