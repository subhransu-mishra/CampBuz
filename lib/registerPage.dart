import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/loginPage.dart';
import 'package:myapp/usernameCreate.dart';

class registerPage extends StatelessWidget{
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Row(
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
        scrollDirection: Axis.vertical,
        child: Column(

          children: [
            Container(
              height: 205,
              width: 200,
              child:Center(child: Image.asset("assets/images/Login-rafiki.png")),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text("Register",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.lock_outline,size: 35,)
                ),

              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:24),
                  child: Text("Create your free account & start journey",style: TextStyle(fontSize: 13),),
                ),
              ],
            ),
            Container(height: 8,),
            Column(
              children: [
                Container(height: 30,),

                Container(
                  width: 350,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    // controller: userText,
                    decoration: InputDecoration(

                      hintText: "Phone Number",
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
                      prefixIcon: Icon(Icons.phone_android_outlined),

                      ),


                    ),
                  ),

                Container(height: 25,),
                Container(
                  width: 350,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    // controller: passText,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "OTP",
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
                      prefixIcon: Icon(Icons.onetwothree_outlined),

                    ),
                  ),
                ),
                Container(height: 25,),
                Container(
                  width: 350,
                  child: TextField(
                    obscureText: true,
                    // controller: userText,
                    decoration: InputDecoration(
                      hintText: "Password",
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
                      prefixIcon:Icon(Icons.remove_red_eye),

                      ),
                    ),
                  ),

                Container(height: 25,),
                Container(
                  width: 350,
                  child: TextField(
                    obscureText: true,
                    controller: passText,
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
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
                      prefixIcon: Icon(Icons.security_outlined),

                      ),


                    ),
                  ),

                Container(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account ! "),
                    InkWell(
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(
                            builder: (context)=>
                                loginPage(),
                          )
                          );
                        },
                        child: Text("Login ",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),)),
                    Text("here"),
                  ],
                ),
                Container(height: 25,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                      builder: (context)=>
                          usernameCreate(),
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
                            Text("Proceed",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
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
                Container(height: 25,),

              ],

            ),



          ],
        ),
      ),
    );
  }
}