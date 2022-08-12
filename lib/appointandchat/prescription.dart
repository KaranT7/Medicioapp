import 'package:finalmedicio/home/doctorhome.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Prescription extends StatelessWidget {
  const Prescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Prescription",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 27
      ))),
        leading:  IconButton(
          iconSize: 35,
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.blueAccent,),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(
                    autofocus: false,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_box),
                        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        hintText: "Patient Name",
                        border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ))),
              ),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(
                    autofocus: false,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.medical_services_outlined),
                        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        hintText: "Patient Disease",
                        border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ))),
              ),
              SizedBox(height: 15),
              Text("Upload Prescription:-", style: text()),
              SizedBox(height: 7),
          // Container(
          //     margin: EdgeInsets.only(left: 20,right: 20),
          //     decoration: BoxDecoration(
          //         color: Colors.blueAccent.withOpacity(0.8),
          //         borderRadius: BorderRadius.circular(50)
          //     ),
          //     height: 45,
          //     width: 155,
          // child: Center(child: Text("Add Image", style: text(),))),

              Container(
                  child: Image.asset("assets/images/finalreport.png"),
                  height: 300,
                  margin: EdgeInsets.only(left: 10,right: 35),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  )),
              SizedBox(height: 21),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Upload Prescription",
                            style: TextStyle(color: Colors.white,
                                fontSize: 25)),
                        SizedBox(width: 10,),
                        Text("|",
                            style: TextStyle(color: Colors.white,
                                fontSize: 30)),
                        IconButton(
                          iconSize: 35,
                          color: Colors.white,
                          icon: Icon(Icons.bookmark),
                          onPressed: (){
                            Fluttertoast.showToast(msg: "Prescription Uploaded Successfully");
                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>DoctorHome()), (route) => false);
                          },
                        )
                      ])
              ),
            ]),
        ),
      ),);
  }
}

//widget

TextStyle text(){
  return TextStyle(
      fontSize: 21,
      color: Colors.white,
      fontWeight: FontWeight.bold);
}