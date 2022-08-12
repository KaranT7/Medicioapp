import 'package:finalmedicio/accounts/medicioscreen.dart';
import 'package:finalmedicio/appointandchat/inspectappoint.dart';
import 'package:finalmedicio/appointandchat/prescription.dart';
import 'package:finalmedicio/profile/doctorprofile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class DoctorHome extends StatefulWidget {
  const DoctorHome({Key? key}) : super(key: key);

  @override
  _DoctorHomeState createState() => _DoctorHomeState();
}

class _DoctorHomeState extends State<DoctorHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Medicio",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 27
        ))),
          leading:  IconButton(
            iconSize: 35,
            icon: Icon(Icons.exit_to_app),
            onPressed: (){
              logout(context);
            },
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body:Padding(
          padding: const EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 20),
          child: Container(
              child: Column(
                  children: [
                    Container(
                        height: 235,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage("assets/images/doctorimage.jpg"),
                              fit: BoxFit.fill,
                            ))
                    ),
                    SizedBox(height: 25),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            child: Container(
                              child: Column(
                                  children: [
                                    CircleAvatar(radius: 30,child: Image.asset("assets/images/doctor.png"),),
                                    SizedBox(height: 10,),
                                    InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DoctorProfile()));
                                      },
                                      child: Container(child:  Text("Profile",style: TextStyle(
                                          color: Colors.blueAccent.withOpacity(0.7),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24
                                      ))),
                                    )
                                  ]),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 210,
                            decoration: BoxDecoration(
                                color: Colors.lightBlue.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            margin: EdgeInsets.all(20),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Welcome,",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25
                                  )),
                                  Text("Dr. Rajesh Gurnani",style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23
                                  ))
                                ]),
                          ),
                        ]),
                    SizedBox(height: 15),
                    Container(
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
                              Text("Inspect Appointments",
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
                                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>InspectAppoint()));
                                },
                              )
                            ])
                    ),
                    SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              height: 50,
                              width: 220,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(" Upload Prescription ",
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 18)),
                                    Text("|",
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 20)),
                                    IconButton(
                                      iconSize: 25,
                                      color: Colors.white,
                                      icon: Icon(Icons.bookmark),
                                      onPressed: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Prescription()));
                                      },
                                    )
                                  ])
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              height: 50,
                              width: 160,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(" Update EHR ",
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
                    //commented
                    // Container(
                    //     decoration: BoxDecoration(
                    //         color: Colors.blueAccent.withOpacity(0.8),
                    //         borderRadius: BorderRadius.circular(50)
                    //     ),
                    //     height: 50,
                    //     width: MediaQuery.of(context).size.width,
                    //     child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: [
                    //           Text("Upload Prescription",
                    //               style: TextStyle(color: Colors.white,
                    //                   fontSize: 25)),
                    //           SizedBox(width: 10,),
                    //           Text("|",
                    //               style: TextStyle(color: Colors.white,
                    //                   fontSize: 30)),
                    //           IconButton(
                    //             iconSize: 35,
                    //             color: Colors.white,
                    //             icon: Icon(Icons.bookmark),
                    //             onPressed: (){
                    //               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Prescription()));
                    //             },
                    //           )
                    //         ])
                    // ),
                    // commented
                  ])),
        ));
  }
  Future<void> logout(BuildContext context) async{
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> MedicioScreen()));
  }
}
