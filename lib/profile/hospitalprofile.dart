import 'package:flutter/material.dart';

class HospitalProfile extends StatefulWidget {
  const HospitalProfile({Key? key}) : super(key: key);

  @override
  _HospitalProfileState createState() => _HospitalProfileState();
}

class _HospitalProfileState extends State<HospitalProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading:  IconButton(
              iconSize: 35,
              icon: Icon(Icons.arrow_back_outlined),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            backgroundColor: Colors.greenAccent,
            title: Center(child: Text("Hospital Profile",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 21
            )))),
        body:Padding(
          padding: const EdgeInsets.only(top: 40,left: 25,right: 25,bottom: 70),

              child: Container(
                height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(radius:60 ,child: Image.asset("assets/images/hospital.png")),SizedBox(height: 10),
                      Text("Hospital Name: Cadella",style: text()),
                      Text("Mobile Number: 23232424",style: text()),
                      Text("City: Ahmedabad",style: text()),
                      Text("State: Gujarat",style: text()),
                      Text("GLN Number:-",style: text()),
                      Text("0847976000005",style: text()),
                    ]),
              )),
        );
  }
}

//widget

TextStyle text(){
  return TextStyle(
      fontSize: 21,
      color: Colors.white,
      fontWeight: FontWeight.bold);
}

