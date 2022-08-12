import 'package:finalmedicio/accounts/medicioscreen.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey,
          leading: IconButton(iconSize: 35,onPressed: (){
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>MedicioScreen()), (route) => false);
          },
              icon: Icon(Icons.arrow_back)),
          title: Center(child: Text("Admin",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 27
          )))),
      body: PageView.builder(
          itemCount: content.length,
          itemBuilder: (_,i){
            return Stack(
              children: <Widget>[
                Container(
                  transform: Matrix4.translationValues(0, 10, 1 ),
                  height:80,
                  width: 405,
                  margin:EdgeInsets.only(
                      left:7,
                      right:7
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueGrey
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(content[i].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white
                            )),
                        Text(content[i].count,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white
                            )),
                      ],
                    ),
                  ),
                ),

                //second half
                Container(
                  transform: Matrix4.translationValues(0, 100, 1 ),
                  padding: const EdgeInsets.symmetric(vertical:14.0, horizontal:14.0),
                  width: double.infinity,
                  height: double.infinity,
                  margin:EdgeInsets.only(
                      left:7,
                      right:7
                  ),
                  child: Column(
                    children: [
                      Text(content[i].name1,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.double,
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Colors.white
                          )),
                      SizedBox(height:15),
                      Text(content[i].email,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                              color: Colors.white
                          )),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )
                  ),
                )
              ],
            );
          }
      ),
    );
  }
}

class PictureContent{
  var name;
  var count;
  var name1;
  var email;

  PictureContent({this.name, this.count, this.name1, this.email});
}
List<PictureContent> content =[
  PictureContent(
    name: "Number of Patient Accounts: ",
    count: "4",
    name1: "Email of Registered Patients :",
    email: "remod10@gmail.com \n"
        "sshruti@gmail.com \n"
        "armenon@gmail.com \n"
        "madhav@gmail.com"
  ),
  PictureContent(
    name: "Number of Doctor Accounts: ", count: "4",
    name1: "Email of Registered Doctors :",
      email: "rajeshgurnani@gmail.com \nsamvidhishelay@gmail.com \n"
          "keyursoni@gmail.com \n"
          "raghusatya@gmail.com \n"
  ),
  PictureContent(
    name: "Number of Hospital Accounts: ",
    count: "3",
    name1: "Email of Registered Hospitals :",
      email: "cadellahospital@gmail.com \n"
          "zydushospital@gmail.com \n"
          "samvedhospital@gmail.com \n"
  )
];

