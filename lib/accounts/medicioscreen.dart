import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:finalmedicio/aboutus.dart';
import 'package:finalmedicio/accounts/doctorscreen.dart';
import 'package:finalmedicio/accounts/hospitalscreen.dart';
import 'package:finalmedicio/accounts/patientscreen.dart';
import 'package:flutter/material.dart';

class MedicioScreen extends StatefulWidget {
  const MedicioScreen({Key? key}) : super(key: key);

  @override
  _MedicioScreenState createState() => _MedicioScreenState();
}

class _MedicioScreenState extends State<MedicioScreen> {
  //variables defined here
  int _state=0;
  var backgroundcolor= Colors.blue.shade900;
  double pagey=0;
  double height=0;

  @override
  Widget build(BuildContext context) {

    //conditions for animated container
    height= MediaQuery.of(context).size.height;
    if(_state==0) {
      backgroundcolor = Colors.deepPurple.withOpacity(0.6);
      pagey= height;
    }
    else if(_state==1) {
      backgroundcolor = Colors.deepOrangeAccent;
      pagey= 200;
    }

    return Scaffold(
      body: Stack(
          children: [
            AnimatedContainer(
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(
                milliseconds: 1000
            ),
            color: backgroundcolor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: 70
                    ),
                    child: Column(
                        children: [
                          Container(
                            width: 240,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: Colors.deepPurpleAccent.withOpacity(0.5)
                            ),
                            child: Center(
                              child: FadeAnimatedTextKit(text:["Welcome","To","Medicio"],
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 34,
                                    color: Colors.white
                                ),
                                repeatForever: true,
                              ),
                            ),
                          ),
                        ])
                ),
               SizedBox( height:3),
               Container(
                 child: Image.asset("assets/images/medical.png"),
                 decoration: BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage("assets/images/medical.png"),
                       fit: BoxFit.fill,
                     ))),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(_state!=0)
                      {_state=0;}
                      else
                      {_state=1;}
                    });
                  },
                  child: Container(
                    height: 77,
                      width: 77,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/homeblue.png"),
                            fit: BoxFit.fill,
                          ))
                  )),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      height: 50,
                      width: 200,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              iconSize: 25,
                              color: Colors.white,
                              icon: Icon(Icons.info),
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AboutUs()));
                              },
                            ),
                            Text("About Us",
                                style: TextStyle(color: Colors.white,
                                    fontSize: 25))
                          ])
                  ),
                ),
              ]),
          ),
            AnimatedContainer(
              curve: Curves.fastOutSlowIn,
              duration: Duration(
                  milliseconds: 400
              ),
              transform: Matrix4.translationValues(0, pagey, 1),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21)
                  )
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment(-0.93,1),
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 10
                      ),
                      child: FloatingActionButton(
                          child: Icon((Icons.arrow_back)),
                          onPressed: (){
                            setState(() {
                              _state=0;
                            });}
                      ),),),
                  Container(
                    margin: EdgeInsets.only(
                        top: 5
                    ),
                    width: double.infinity,
                    height: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(radius:60 ,child: Image.asset("assets/images/userpng.png")),
                        GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PatientScreen()));},
                            child: Container(height: 50, width: 200,child: Center(child: Text("Patient", style: text())),decoration: decoration(),)),
                        GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DoctorScreen()));},
                            child: Container(height: 50, width: 200,child: Center(child: Text("Doctor",style: text())),decoration: decoration(),)),
                        GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HospitalScreen()));},
                            child: Container(height: 50, width: 200,child: Center(child: Text("Hospital",style: text())),decoration: decoration(),)),

                      ],),
                  )
                ],),
            )
          ]),
    );
  }
}

//widget declaration
BoxDecoration decoration(){
  return BoxDecoration(
      color: Colors.pink.withOpacity(0.8),
      borderRadius: BorderRadius.circular(25)
  );
}

TextStyle text(){
  return TextStyle(
      fontSize: 25,
      color: Colors.white,
      fontWeight: FontWeight.bold);
}