import 'package:finalmedicio/accounts/medicioscreen.dart';
import 'package:finalmedicio/appointandchat/appointmentbook.dart';
import 'package:finalmedicio/appointandchat/appointmentstatus.dart';
import 'package:finalmedicio/appointandchat/chatscreen.dart';
import 'package:finalmedicio/profile/patientprofile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PatientHome extends StatefulWidget {
  const PatientHome({Key? key}) : super(key: key);

  @override
  _PatientHomeState createState() => _PatientHomeState();
}

class _PatientHomeState extends State<PatientHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
          iconSize: 35,
          icon: Icon(Icons.exit_to_app),
          onPressed: (){
            logout(context);
          },
        ),
          backgroundColor: Colors.redAccent,
          title: Center(child: Text("Medicio",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 21
      )))),
      body: Padding(
        padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
        child: SingleChildScrollView(
          child: Container(
              child: Column(
                  children: [
                    Container(
                        height: 220,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage("assets/images/patientimage.jpg"),
                              fit: BoxFit.fill,
                            ))
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      InkWell(
                        child: Container(
                          child: Column(
                            children: [
                              CircleAvatar(radius: 25,child: Image.asset("assets/images/userpng.png"),),
                              SizedBox(height: 10,),
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PatientProfile()));
                                },
                                child: Container(child:  Text("Profile",style: TextStyle(
                                    color: Colors.deepOrangeAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22
                                ))),
                              )
                            ]),
                        ),
                      ),
                        Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.redAccent.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          margin: EdgeInsets.all(20),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Welcome Patient,",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25
                                )),
                                Text("Remo Dsouza",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25
                                ))
                              ]),
                        ),
                      ]),
                    SizedBox(height: 15),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(50)
                        ),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Book an Appointment",
                              style: TextStyle(color: Colors.white,
                                  fontSize: 25)),
                          SizedBox(width: 10,),
                          Text("|",
                              style: TextStyle(color: Colors.white,
                                  fontSize: 30)),
                          IconButton(
                            iconSize: 35,
                            color: Colors.white,
                            icon: Icon(Icons.touch_app_outlined),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AppointmentBook()));
                            },
                          )
                        ])
                    ),
                    SizedBox(height: 15),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Appointment Status",
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 25)),
                              SizedBox(width: 10,),
                              Text("|",
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 30)),
                              IconButton(
                                iconSize: 35,
                                color: Colors.white,
                                icon: Icon(Icons.book_outlined),
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AppointmentStatus()));
                                },
                              )
                            ])
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          height: 50,
                          width: 120,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 25,
                                  color: Colors.white,
                                  icon: Icon(Icons.chat),
                                  onPressed: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChatScreen()));
                                  },
                                ),
                                Text("Chat",
                                    style: TextStyle(color: Colors.white,
                                        fontSize: 25))
                              ])
                      ),
                    ),
                  ])
          ),)
      ));
  }

  Future<void> logout(BuildContext context) async{
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> MedicioScreen()));
  }
}

