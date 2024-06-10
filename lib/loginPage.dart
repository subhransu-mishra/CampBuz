import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/main.dart';
import 'package:myapp/registerPage.dart';

class loginPage extends StatelessWidget{
  var emailText = TextEditingController();
  var userText = TextEditingController();
  var passText = TextEditingController();
  // bool isPass = true;
  @override
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center ,
          children: [
             Container(
               height: 200,
                 width: 300,
                 child: Image.asset("assets/images/171.jpg")),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text("Secure Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:24),
                  child: Text("Please sign in to continue",style: TextStyle(fontSize: 15),),
                ),
              ],
            ),
            Container(height: 26,),
            Center(
              child: Container(
                  width: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          controller: emailText,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Phone Number",
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 3,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  )

                              ),


                            prefixIcon: Icon(
                              Icons.phone_android
                            ),
                          ),
                        ),
                        Container(height: 30,),
                        TextField(
                          controller: userText,
                          decoration: InputDecoration(
                            hintText: "Username",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 3,
                              )
                            ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                )
                              ),
                            prefixIcon: Icon(
                                Icons.perm_identity_outlined
                              ),


                          ),
                        ),
                        Container(height: 30,),
                        TextField(
                          controller: passText,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 3,
                                  ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                )
                              ),
                            prefixIcon: IconButton(

                              icon: Icon(Icons.remove_red_eye_outlined),
                              onPressed: (){

                              },

                            ),

                          ),
                        ),
                        Container(height: 73,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have account ! "),
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                    context, MaterialPageRoute(
                                  builder: (context)=>
                                      registerPage(),
                                )
                                );
                              },
                                child: Text("Register ",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),)),
                            Text("Now"),
                          ],
                        ),
                        Container(height: 12,),
                        InkWell(
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(
                              builder: (context)=>
                                  MyHomePage(title:  'First Flutter Page',),
                            )
                            );
                          },
                          child: Container(
                            height: 60,
                            width: 600,
                            child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(height: 20,),



                      ],
                    ),

                ),
            ),
          ],
        ),
      ),


    );
  }

}