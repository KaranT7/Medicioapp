import 'package:finalmedicio/profile/providedoctor.dart';
import 'package:flutter/material.dart';

class CheckAppointment extends StatelessWidget {
  const CheckAppointment({Key? key}) : super(key: key);

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
          title: Center(child: Text("Appointments",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 21
          )))),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            children: [
              Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(7),
                          height: 230,
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
                              SizedBox(height: 15,),
                              // Row(mainAxisAlignment: MainAxisAlignment.center,
                              //     children: [
                                Container(width:115,height: 37,
                                  child: Center(child: Text("Confirmed",style: text())),
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)
                                  ),),SizedBox(width: 60,),
                                // Container(width:90,height: 30,
                                //   child: Center(child: Text("Cancel",style: text())),
                                //   decoration: BoxDecoration(
                                //       color: Colors.red,
                                //       borderRadius: BorderRadius.circular(10)
                                //))
                              // ])
                            ]),),
                        SizedBox(height: 15),
                        // Container(
                        //   margin: EdgeInsets.all(7),
                        //   height: 230,
                        //   width: MediaQuery.of(context).size.width,
                        //   decoration: decoration(),
                        //   child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: [
                        //         Text("Patient Name: Tome",style: text()),
                        //         Text("Prior Health Issues:-",style: text()),
                        //         Text("Breathing issues, Lung Problem",style: text()),
                        //         Text("Date and Time:-",style: text()),
                        //         Text("28 Febraury, 17:00 PM",style: text()),
                        //         Text("Mobile Number: 9879871230",style: text()),
                        //         SizedBox(height: 15,),
                        //         Row(mainAxisAlignment: MainAxisAlignment.center,
                        //             children: [
                        //               Container(width:90,height: 30,
                        //                 child: Center(child: Text("Confirm",style: text())),
                        //                 decoration: BoxDecoration(
                        //                     color: Colors.green,
                        //                     borderRadius: BorderRadius.circular(10)
                        //                 ),),SizedBox(width: 60,),
                        //               Container(width:90,height: 30,
                        //                 child: Center(child: Text("Cancel",style: text())),
                        //                 decoration: BoxDecoration(
                        //                     color: Colors.red,
                        //                     borderRadius: BorderRadius.circular(10)
                        //                 ),)
                        //             ])
                        //       ]),),
                      ]),
                  ),
                ),
              SizedBox(height: 10),
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
                        Text("Provide Doctor",
                            style: TextStyle(color: Colors.white,
                                fontSize: 25)),
                        SizedBox(width: 10,),
                        Text("|",
                            style: TextStyle(color: Colors.white,
                                fontSize: 30)),
                        IconButton(
                          iconSize: 35,
                          color: Colors.white,
                          icon: Icon(Icons.medical_services),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProvideDoctor()));
                          },
                        )
                      ])
              ),
            ],
          ),
        )
      ));
  }
}

// widgets declaration
BoxDecoration decoration(){
  return BoxDecoration(
      color: Colors.lightGreen.withOpacity(0.4),
      borderRadius: BorderRadius.circular(25)
  );
}

TextStyle text(){
  return TextStyle(
      fontSize: 21,
      color: Colors.white,
      fontWeight: FontWeight.bold);
}
