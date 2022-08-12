import 'package:flutter/material.dart';

class AppointmentStatus extends StatelessWidget {
  const AppointmentStatus({Key? key}) : super(key: key);

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
            title: Center(child: Text("Medicio",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 21
            )))),
        body:Padding(
          padding: const EdgeInsets.only(top: 40,left: 25,right: 25,bottom: 40),
              child: Container(
                height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Patient Name: Remo Dsouza",style: text()),
                      Text("Health Issues:-",style: text()),
                      Text("Cough, Body Ache, Cold",style: text()),
                      Text("Date and Time:-",style: text()),
                      Text("16th Febraury, 11:00 AM",style: text()),
                      Text("Mobile Number: 9898979710",style: text()),
                      Text("Hospital Name: Cadella",style: text()),
                      Text("Status: Confirmed",style: TextStyle(
                          fontSize: 21,
                          color: Colors.green,
                          fontWeight: FontWeight.bold
                      )),
                    ]),
              )),
        );
  }
}

//widget
TextStyle text() {
  return TextStyle(
      fontSize: 21,
      color: Colors.white,
      fontWeight: FontWeight.bold);
}

