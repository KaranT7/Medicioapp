import 'package:finalmedicio/home/hospitalhome.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProvideDoctor extends StatelessWidget {
  const ProvideDoctor({Key? key}) : super(key: key);

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
          backgroundColor: Colors.greenAccent,
          title: Center(child: Text("Provide Doctor",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 21
          )))),
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.3),
              borderRadius: BorderRadius.circular(21)
          ),
          margin: EdgeInsets.only(top: 60),
          height: 430,
          width: MediaQuery.of(context).size.width,
         // decoration: decoration(),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Patient Name: Remo Dsouza",style: text()), SizedBox(height: 5),
                Text("Health Issues:-",style: text()), SizedBox(height: 5),
                Text("Cough, Body Ache, Cold",style: text()), SizedBox(height: 5),
                Text("Date and Time:-",style: text()), SizedBox(height: 5),
                Text("16th Febraury, 11:00 AM",style: text()), SizedBox(height: 5),
                Text("Mobile Number: 9898979710",style: text()), SizedBox(height: 5),
                Text("Provide Doctor Name:-",style: text()),
                SizedBox(height: 5),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: TextFormField(
                      autofocus: false,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_box_outlined),
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Doctor Name",
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ))),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.teal.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Confirm Selection",
                              style: TextStyle(color: Colors.white,
                                  fontSize: 25)),
                          SizedBox(width: 10,),
                          Text("|",
                              style: TextStyle(color: Colors.white,
                                  fontSize: 30)),
                          IconButton(
                            iconSize: 35,
                            color: Colors.white,
                            icon: Icon(Icons.touch_app),
                            onPressed: (){
                              Fluttertoast.showToast(msg: "Information Provided to Doctor Successfully");
                              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>HospitalHome()), (route) => false);
                            },
                          )
                        ])
                ),
              ]),),
      ),
    );
  }
}
//widget declaration
TextStyle text(){
  return TextStyle(
      fontSize: 21,
      color: Colors.white,
      fontWeight: FontWeight.bold);
}