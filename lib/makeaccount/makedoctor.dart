import 'package:finalmedicio/home/hospitalhome.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MakeDoctor extends StatefulWidget {
  const MakeDoctor({Key? key}) : super(key: key);

  @override
  _MakeDoctorState createState() => _MakeDoctorState();
}

class _MakeDoctorState extends State<MakeDoctor> {
  @override
  Widget build(BuildContext context) {
    final doctornamefield = TextFormField(
      autofocus: false,
      //controller: doctornamecontroller,
      onSaved: (value){
        //doctornamecontroller.text=value!;
      },
      validator: (value){
        if(value!.isEmpty)
        {return"Doctor Name is required";}
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Doctor Name",
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
        //return null;
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
    final specializationfield = TextFormField(
      autofocus: false,
      //controller: specializationcontroller,
      onSaved: (value){
        //specializationcontroller.text=value!;
      },
      validator: (value){
        if(value!.isEmpty)
        {return"Specialization of Doctor is required";}
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_box_outlined),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Specialization",
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );
    final dayfield = TextFormField(
      autofocus: false,
      //controller: daycontroller,
      onSaved: (value){
        //daycontroller.text=value!;
      },
      validator: (value){
        if(value!.isEmpty)
        {return"Please Provide Availability Days of Specified Doctor";}
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.settings_system_daydream),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Availability Days",
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );
    final adddoctorbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.teal.shade700,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding:EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        onPressed: (){
          Fluttertoast.showToast(msg: "Doctor Registered Successfully");
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>HospitalHome()), (route) => false);
        },
        child: Text("Add Doctor",  style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
        )),
      ),
    );

    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Doctor Registration",style: TextStyle(
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
                          CircleAvatar(radius:60 ,child: Image.asset("assets/images/doctor.png")),SizedBox(height: 10),
                          doctornamefield, SizedBox(height: 10),
                          emailfield, SizedBox(height: 10),
                          passwordfield, SizedBox(height: 10),
                          confirmpasswordfield, SizedBox(height: 10),
                          mobilefield, SizedBox(height: 10),
                          cityfield, SizedBox(height: 10),
                          statefield, SizedBox(height: 10),
                          specializationfield, SizedBox(height: 10),
                          dayfield, SizedBox(height: 15),
                          adddoctorbutton])
                    ))
            ))
    );
  }
}
