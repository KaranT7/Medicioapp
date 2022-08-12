import 'package:flutter/material.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({Key? key}) : super(key: key);
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
          backgroundColor: Colors.blueAccent,
          title: Center(child: Text("Doctor Profile",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 21
          )))),
      body:Padding(
          padding: const EdgeInsets.only(top: 40,left: 25,right: 25,bottom: 70),

          child: Container(
            height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.lightBlue.withOpacity(0.4),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(radius:60 ,child: Image.asset("assets/images/doctor.png")),SizedBox(height: 5),
                  Text("Doctor Name: Dr. Rajesh Gurnani",style: text()),
                  Text("Mobile Number: 9727972710",style: text()),
                  Text("City: Ahmedabad",style: text()),
                  Text("State: Gujarat",style: text()),
                  Text("Specialisation: M.D Physician",style: text()),
                  Text("Availability Days:-",style: text()),
                  Text("Monday, Thursday",style: text()),
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