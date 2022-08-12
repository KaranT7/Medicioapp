import 'package:finalmedicio/accounts/medicioscreen.dart';
import 'package:finalmedicio/home/doctorhome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  //variables declared
  final _formkey= GlobalKey<FormState>();
  final FirebaseAuth _auth= FirebaseAuth.instance;
  final TextEditingController emailcontroller= new TextEditingController();
  final TextEditingController passwordcontroller= new TextEditingController();

  @override
  Widget build(BuildContext context) {

    //textfields declaration
    final emailfield = TextFormField(
      autofocus: false,
      controller: emailcontroller,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value){
         emailcontroller.text=value!;
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
      controller: passwordcontroller,
      onSaved: (value){
          passwordcontroller.text=value!;
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
    final loginbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.teal.shade500,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding:EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        onPressed: (){
          logIn(emailcontroller.text, passwordcontroller.text);
        },
        child: Text("Login",  style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
        )),
      ),
    );

    return Scaffold(
      appBar:  AppBar(title: Center(child: Text("Doctor Login",style: TextStyle(
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
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              child: Form(key: _formkey,
                child: Column(
                    children: <Widget>[
                      CircleAvatar(radius:60 ,child: Image.asset("assets/images/doctor.png")),
                      SizedBox(height: 20),
                      emailfield,
                      SizedBox(height: 20),
                      passwordfield,
                      SizedBox(height: 20),
                      loginbutton,
                    ]),
              ),
            ),
          )),
    );
  }
  //for login purpose
  Future logIn(String email,String password)async
  {
    if(_formkey.currentState!.validate())
    {
      await _auth.signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
        Fluttertoast.showToast(msg: "Login Successfully"),
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>DoctorHome()), (route) => false)
      }).catchError((e){
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

}
