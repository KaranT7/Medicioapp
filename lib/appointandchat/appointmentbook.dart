import 'package:finalmedicio/home/patienthome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppointmentBook extends StatefulWidget {
  const AppointmentBook({Key? key}) : super(key: key);

  @override
  _AppointmentBookState createState() => _AppointmentBookState();
}

class _AppointmentBookState extends State<AppointmentBook> {

  String? value;
  var items =  ['Cadella Hospital','Zydus Hospital','Samved Hospital'];

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
          title: Center(child: Text("Appointment",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 21
          )))),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text("Symptoms you are suffering from: ",style: text()),
              SizedBox(height: 7),
            TextFormField(
                autofocus: false,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                prefixIcon: Icon(Icons.local_hospital),
                contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: "Symptoms",
                border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ))),

              SizedBox(height: 30,),
              Text("Mention Time for the Appointment: ",style: text()),
              SizedBox(height: 7),
              TextFormField(
                  autofocus: false,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.date_range),
                      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                      hintText: "Date and Time",
                      border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ))),

              SizedBox(height: 30,),
              Text("Any prior health related problems: ",style: text()),
              SizedBox(height: 7),
              TextFormField(
                  autofocus: false,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.local_hospital),
                      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                      hintText: "If any then Mention",
                      border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ))),
              SizedBox(height: 30,),

              Text("Select Preferred Hospital: ",style: text()),
              SizedBox(height: 7),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.black87, width: 3)
                ),
                margin: EdgeInsets.only(left: 15,right: 15),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: value,
                  items: items.map(buildMenuItem).toList(),
                  onChanged: (value)=> setState(()=> this.value = value) ,
                ),
              ),
              SizedBox(height: 30),
              Container(
               decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(50)),
               height: 50,
               width: MediaQuery.of(context).size.width,
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Confirm Appointment",
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
                        Fluttertoast.showToast(msg: "Appointment Booked Successfully");
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>PatientHome()), (route) => false);
                      },)
                  ])),
              SizedBox(height: 4,),
              Align(alignment: Alignment.center,
                child: Text("Note : Your details will be shared with other Doctors (if needed).",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal)))
            ]),
        ),
      ));
  }

  DropdownMenuItem<String> buildMenuItem(String item)=>
      DropdownMenuItem(value: item,
        child: Text(item,
        style: TextStyle(
            fontSize: 21,
            color: Colors.black87,
            fontWeight: FontWeight.bold
        )),
      );
}

//widget
TextStyle text() {
  return TextStyle(
      fontSize: 21,
      color: Colors.teal,
      fontWeight: FontWeight.bold);
}
