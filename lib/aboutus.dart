import 'package:finalmedicio/accounts/adminscreen.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.deepPurpleAccent,
      child: MaterialButton(
        minWidth: 180,
        padding:EdgeInsets.fromLTRB(30, 15, 30, 15),
        onPressed: (){
         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AdminScreen()));
        },
        child: Text("Admin Login",  style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
        )),
      ),
    );

    return Scaffold(
      appBar: AppBar(
          leading:  IconButton(
            iconSize: 35,
            icon: Icon(Icons.arrow_back_outlined),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.deepPurple,
          title: Center(child: Text("Medicio",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25
          )))),
      body:Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(radius:70 ,child: Image.asset("assets/images/Medicio.png")),SizedBox(height: 10),
                    Center(
                      child: Text("Medicio is an application created by Karan, Sanjana and Harshita of GLS University.",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white)),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                          "We created this application, Medicio:",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white)),
                    ),
                    SizedBox(height: 3),
                    Center(
                      child: Text(
                              "For hospitals to get more appointments,"
                              " for helping doctors in handling patient profiles and appointments in a better and easy way,"
                         "for patients to easily chat with other patients of same disease, book appointments and view their prescription anytime on their phones.",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white)),
                    ),
                    SizedBox(height: 10),
                    loginbutton,
                  ]),
            ),
          )),
    );
  }
}
