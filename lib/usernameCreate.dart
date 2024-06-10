import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/main.dart';

class usernameCreate extends StatelessWidget{
  @override
  bool isCheck = true;
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                  height: 100,
                  width: 40,
                  child: Image.asset("assets/images/main_logo.png")),
            ),

            Container(
                height: 200,
                width: 180,
                child: Image.asset("assets/images/profile.png")),
            // Text("CampBuz",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(height: 100),
            Container(
              height: 220,
              width: 500,
              child: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                radius: 102,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/man_img.png"),
                  radius: 102,
                  child: IconButton(
                    iconSize: 35,
                    icon: Icon(Icons.camera_alt_rounded),
                    onPressed: (){

                    },
                  ),

                ),
              ),
            ),
            Container(height: 50),
            Container(
              width: 350,
              child: TextField(
                // controller: userText,
                decoration: InputDecoration(
                  hintText: "Give a unique username",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 5,
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 3
                      )
                  ),
                  prefixIcon:Icon(Icons.verified_rounded),

                  prefixIconColor: Colors.black,


                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 350,
              child: TextField(

                decoration: InputDecoration(
                  helperText: "*optional",
                  helperStyle: TextStyle(color: Colors.blue),
                  hintText: "College ID",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 5,
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 3
                      )
                  ),
                  prefixIcon: Icon(Icons.school_rounded,),

                  prefixIconColor: Colors.black,


                ),
              ),
            ),
            SizedBox(height: 40),

            InkWell(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(
                  builder: (context)=>
                  MyHomePage(title:"This is first page"),
                )
                );
              },
              child: Container(
                height: 60,
                width: 365,
                child: Center(
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        Text("Let's Start",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(width: 20),
                        Icon(Icons.arrow_forward_ios,color: Colors.white,)

                      ],
                    )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.black,
                ),
              ),
            ),
            Container(height: 40),
                Text("By signing up , you agree to our"),
                InkWell(
                  onTap: (){

                  },
                    child:
                    Text("Terms , Data Policy and Cookies policy",style: TextStyle(decoration: TextDecoration.underline))),
          ],
        ),
      )




    );
  }
}