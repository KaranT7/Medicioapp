import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PatientProfile extends StatelessWidget {

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
          backgroundColor: Colors.redAccent,
          title: Center(child: Text("Patient Profile",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 21
          )))),
      body:Padding(
          padding: const EdgeInsets.only(top: 30,left: 25,right: 25,bottom: 30),
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.redAccent.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(radius:28 ,child: Image.asset("assets/images/userpng.png")),SizedBox(height: 5),
                  Text("Name: Remo Dsouza",style: text()),
                  Text("Mobile Number: 9898979710",style: text()),
                  Text("City: Jamnagar",style: text()),
                  Text("State: Gujarat",style: text()),
                  Text("Blood Group: A+",style: text()),
                  Text("Emergency Contact Number-:",style: text()),
                  Text("Number 1: 9696959510",style: text()),
                  Text("Number 2: 9494939310",style: text()),
                  Text("Prescription: ",style: text()),
                  Container(
                    child: Image.asset("assets/images/finalreport.png"),
                      height: 300,
                      margin: EdgeInsets.only(left: 10,right: 35),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                      )),
                  SizedBox(height: 3,),
                  Text("Disease: Covid",style: text()),
                  Container(
                    margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      height: 50,
                      width: 160,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(" Check EHR ",
                                style: TextStyle(color: Colors.white,
                                    fontSize: 18)),
                            Text("|",
                                style: TextStyle(color: Colors.white,
                                    fontSize: 20)),
                            IconButton(
                              iconSize: 25,
                              color: Colors.white,
                              icon: Icon(Icons.record_voice_over_rounded),
                              onPressed: () async{
                                final url= 'https://web.ehryourway.com/';
                                if (await canLaunch(url))
                                {await launch(url);}
                                //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Prescription()));
                              },
                            )
                          ])
                  ),
                ]),
            )),
      ));
  }
}

//widget 

TextStyle text(){
  return TextStyle(
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.bold);
}
