import 'package:flutter/material.dart';

class InspectAppoint extends StatelessWidget {
  const InspectAppoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading:  IconButton(
                iconSize: 35,
                icon: Icon(Icons.arrow_back_outlined),
                onPressed: (){
                  Navigator.pop(context);
                }),
            backgroundColor: Colors.blueAccent,
            title: Center(child: Text("Appointments",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 21
            )))),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
                child: Container(
                  child: Column(
                      children: [
                        Container(height: 50, width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(color: Colors.blueAccent.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(15)),
                        child: Center(child: Text("Patient Appointments List",style: text())),
                        ),
                        SizedBox(height: 25),
                        Container(
                          height: 170,
                          width: MediaQuery.of(context).size.width,
                          decoration: decoration(),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Patient Name: Remo Dsouza",style: text()),
                                Text("Health Issues:-",style: text()),
                                Text("Cough, Body Ache, Cold",style: text()),
                                Text("Date and Time:-",style: text()),
                                Text("16th Febraury, 11:00 AM",style: text()),
                                Text("Mobile Number: 9898979710",style: text()),
                              ]),),
                        SizedBox(height: 15),
                      ]),
                ))
        ));
  }
}

// widgets declaration
BoxDecoration decoration(){
  return BoxDecoration(
      color: Colors.lightBlueAccent.withOpacity(0.5),
      borderRadius: BorderRadius.circular(25)
  );
}

TextStyle text(){
  return TextStyle(
      fontSize: 21,
      color: Colors.white,
      fontWeight: FontWeight.bold);
}
