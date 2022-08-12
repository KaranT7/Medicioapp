import 'package:finalmedicio/accounts/medicioscreen.dart';
import 'package:finalmedicio/appointandchat/checkappointment.dart';
import 'package:finalmedicio/makeaccount/makedoctor.dart';
import 'package:finalmedicio/profile/hospitalprofile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HospitalHome extends StatefulWidget {
  const HospitalHome({Key? key}) : super(key: key);

  @override
  _HospitalHomeState createState() => _HospitalHomeState();
}

class _HospitalHomeState extends State<HospitalHome> {
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
          backgroundColor: Colors.greenAccent,
          ),
        body:Padding(
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 20),
          child: Container(
            child: Column(
              children: [
                Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("assets/images/hospitalimage.jpg"),
                          fit: BoxFit.fill,
                        ))
                ),
                SizedBox(height: 30),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Container(
                          child: Column(
                              children: [
                                CircleAvatar(radius: 25,child: Image.asset("assets/images/hospital.png"),),
                                SizedBox(height: 10,),
                                InkWell(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HospitalProfile()));
                                  },
                                  child: Container(child:  Text("Profile",style: TextStyle(
                                      color: Colors.teal.withOpacity(0.7),
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
                            color: Colors.teal.withOpacity(0.4),
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
                              Text("Cadella Hospital",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22
                              ))
                            ]),
                      ),
                    ]),
                SizedBox(height: 15),
                Container(
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
                          Text("Add Doctor",
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
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MakeDoctor()));
                            },
                          )
                        ])
                ),
                SizedBox(height: 15),
                Container(
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
                          Text("Check Appointments",
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
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CheckAppointment()));
                            },
                          )
                        ])
                ),

              ])),
        ));
  }

  Future<void> logout(BuildContext context) async{
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> MedicioScreen()));
  }
}
