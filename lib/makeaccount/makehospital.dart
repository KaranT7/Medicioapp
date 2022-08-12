import 'package:finalmedicio/home/hospitalhome.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MakeHospital extends StatefulWidget {
  const MakeHospital({Key? key}) : super(key: key);

  @override
  _MakeHospitalState createState() => _MakeHospitalState();
}

class _MakeHospitalState extends State<MakeHospital> {
  @override
  Widget build(BuildContext context) {
    final hospitalnamefield = TextFormField(
      autofocus: false,
      //controller: hospitalnamecontroller,
      onSaved: (value){
        //hospitalnamecontroller.text=value!;
      },
      validator: (value){
        if(value!.isEmpty)
        {return"Hospital Name is required";}
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Hospital Name",
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
    final glnfield = TextFormField(
      autofocus: false,
      //controller: glncontroller,
      onSaved: (value){
        //glncontroller.text=value!;
      },
      validator: (value){
        RegExp regExp= new RegExp(r'^.{13,}$');
        if(value!.isEmpty)
        {return"GLN Number is required";}
        if(!regExp.hasMatch(value))
        {return"Please enter a valid GLN Number of 13 characters";}
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.format_list_numbered),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "GLN Number",
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
          Fluttertoast.showToast(msg: "Hospital Registered Successfully");
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>HospitalHome()), (route) => false);
        },
        child: Text("Register",  style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
        )),
      ),
    );

    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Hospital Registration",style: TextStyle(
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
                          CircleAvatar(radius:60 ,child: Image.asset("assets/images/hospital.png")),SizedBox(height: 10),
                          hospitalnamefield, SizedBox(height: 10),
                          emailfield, SizedBox(height: 10),
                          passwordfield, SizedBox(height: 10),
                          confirmpasswordfield, SizedBox(height: 10),
                          mobilefield, SizedBox(height: 10),
                          cityfield, SizedBox(height: 10),
                          statefield, SizedBox(height: 10),
                          glnfield, SizedBox(height: 15),
                          registerbutton])
                    ))
            ))
    );
  }
}
