import 'package:finalmedicio/home/patienthome.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MakePatient extends StatefulWidget {
  const MakePatient({Key? key}) : super(key: key);

  @override
  _MakePatientState createState() => _MakePatientState();
}

class _MakePatientState extends State<MakePatient> {

  @override
  Widget build(BuildContext context) {
    final namefield = TextFormField(
      autofocus: false,
      //controller: namecontroller,
      onSaved: (value){
        //namecontroller.text=value!;
      },
      validator: (value){
        RegExp regExp= new RegExp(r'^.{3,}$');
        if(value!.isEmpty)
        {return"Name is required";}
        if(!regExp.hasMatch(value))
        {return"Please enter a valid Name(Minimun 3 characters required)";}
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Name",
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );
    final emailfield = TextFormField(
      autofocus: false,
      //controller: emailcontroller,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value){
        //emailcontroller.text=value!;
      },
      validator: (value){
        if(value!.isEmpty)
        {return"Please enter your email";}
        if(!RegExp("^[a-zA-Z0-9.! #%&'*+/=? ^_`{|}~-]+@[a-zA-Z0-9-]+(?:\. [a-zA-Z0-9-]+)*").hasMatch(value))
        {return"Please enter a valid email";}
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );
    final passwordfield = TextFormField(
      obscureText: true,
      autofocus: false,
      //controller: passwordcontroller,
      onSaved: (value){
        //passwordcontroller.text=value!;
      },
      validator: (value){
        RegExp regExp= new RegExp(r'^.{6,}$');
        if(value!.isEmpty)
        {return"Password is required";}
        if(!regExp.hasMatch(value))
        {return"Please enter a valid password(Minimun 6 characters required)";}
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.password),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );
    final confirmpasswordfield = TextFormField(
      obscureText: true,
      autofocus: false,
      //controller: confirmpasswordcontroller,
      onSaved: (value){
        //confirmpasswordc.text=value!;
      },
      validator: (value){
        //if(confirmpasswordcontroller.text != passwordcontroller.text)
        {return"Password and Confirm password doesn't match";}
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.password),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password",
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );
    final mobilefield = TextFormField(
      autofocus: false,
      //controller: mobilecontroller,
      onSaved: (value){
       //mobilecontroller.text=value!;
      },
      validator: (value){
      RegExp regExp= new RegExp(r'^.{10,}$');
      if(value!.isEmpty)
      {return"Mobile Number is required";}
      if(!regExp.hasMatch(value))
      {return"Please enter a valid Mobile Number";}
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
      prefixIcon: Icon(Icons.format_list_numbered),
      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      hintText: "Mobile Number",
      border:OutlineInputBorder(
      borderRadius: BorderRadius.circular(10)
      )));
    final cityfield = TextFormField(
      autofocus: false,
      //controller: citycontroller,
      onSaved: (value){
        //citycontroller.text=value!;
      },
      validator: (value){
        if(value!.isEmpty)
        {return"City is required";}
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.location_city),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "City",
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );
    final statefield = TextFormField(
      autofocus: false,
      //controller: statecontroller,
      onSaved: (value){
        //statecontroller.text=value!;
      },
      validator: (value){
        if(value!.isEmpty)
        {return"Name is required";}
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.location_city),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "State",
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );
    final bloodfield = TextFormField(
      autofocus: false,
      //controller: bloodcontroller,
      onSaved: (value){
        //bloodcontroller.text=value!;
      },
      validator: (value){
        if(value!.isEmpty)
        {return"Blood Group is required";}
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Blood Group",
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );
    final contact1field = TextFormField(
      autofocus: false,
      //controller: contact1controller,
      onSaved: (value){
        //contact1controller.text=value!;
      },
      validator: (value){
        RegExp regExp= new RegExp(r'^.{10,}$');
        if(value!.isEmpty)
        {return"Contact Number is required";}
        if(!regExp.hasMatch(value))
        {return"Please enter a valid Contact Number";}
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.format_list_numbered),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Number 1",
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );
    final contact2field = TextFormField(
      autofocus: false,
      //controller: contact2controller,
      onSaved: (value){
        //contact2controller.text=value!;
      },
      validator: (value){
        RegExp regExp= new RegExp(r'^.{10,}$');
        if(value!.isEmpty)
        {return"Contact Number is required";}
        if(!regExp.hasMatch(value))
        {return"Please enter a valid Contact Number";}
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.format_list_numbered),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Number 2",
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );
    final registerbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.teal.shade700,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding:EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        onPressed: (){
          Fluttertoast.showToast(msg: "Patient Registered Successfully");
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>PatientHome()), (route) => false);
        },
        child: Text("Register",  style: TextStyle(
          color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
        )),
      ),
    );

    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Patient Registration",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
        ))),
          leading: IconButton(
            iconSize: 35,
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          )),
        body: Center(
            child: SingleChildScrollView(
                child: Container(
                    child: Padding(padding: const EdgeInsets.all(15.0),
                       // child: Form(key: _formkey,
                            child: Column(children: <Widget>[
                              CircleAvatar(radius:60 ,child: Image.asset("assets/images/userpng.png")),SizedBox(height: 10),
                              namefield, SizedBox(height: 10),
                              emailfield, SizedBox(height: 10),
                              passwordfield, SizedBox(height: 10),
                              confirmpasswordfield, SizedBox(height: 10),
                              mobilefield, SizedBox(height: 10),
                              cityfield, SizedBox(height: 10),
                              statefield, SizedBox(height: 10),
                              bloodfield, SizedBox(height: 10),
                              Text("Emergency Contacts:",style: TextStyle(
                                  fontSize: 20,color: Colors.deepPurple, fontWeight: FontWeight.bold)),
                              SizedBox(height: 5),
                              contact1field, SizedBox(height: 10),
                              contact2field, SizedBox(height: 15),
                              registerbutton])
                        ))
                ))
        );
  }
}
