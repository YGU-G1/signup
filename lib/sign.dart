// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/palette.dart';

// ignore: use_key_in_widget_constructors
class Sign extends StatefulWidget{
  @override
  State<Sign> createState() => _SignScreenState();
}

class _SignScreenState extends State<Sign> {
  bool isMale = true ;
  bool isSignupScreen= true ;
  bool isRememberMe = false ;


  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(

            top: 0,
            right: 0,
            left: 0,
            child: Container(
             height: 300,
             decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/b43c0b0d65e7500b6f95222ae5021835.jpg"),
                fit: BoxFit.fill
                
                )
             ),
             child: Container(
              padding: const EdgeInsets.only(top: 90, left: 20),
              color: const Color(0xFF3b5999).withOpacity(.65),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 RichText(text:  TextSpan(
                  text: "Welcome to ",
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 2,
                    color: Colors.yellow,
                  ),
                  children: [
                     TextSpan(
                  text: isSignupScreen ?"Application," :" Back,",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),)
                  ]
                 ),
                 ),
                 SizedBox(height: 5,),
                  Text(
                  isSignupScreen ?"sign up to continue" : " signin to continoue,",
                 style: TextStyle(           
                     letterSpacing: 1,
                    color: Colors.white,
                  ),
                 )
              ],
              ),
             ),
            )
            
            ),
        Positioned(

          top: 200,
           child: Container(
            height: isSignupScreen? 380 :300,
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width-40,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 15,
                  spreadRadius: 5
                ),
              ]
            ),
            child:  Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSignupScreen =false;
                        });
                      },
                      child: Column(
                        children: [
                          Text("login",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: !isSignupScreen? Palette.activeColor:Palette.textColor1),
                          ),
                          if(isSignupScreen)
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        height: 2,
                        width: 55,
                        color: Colors.orange,
                      )
                        ],
                      ),
                    ),
                    GestureDetector(
                       onTap: () {
                        setState(() {
                          isSignupScreen = true;
                        });
                      },
                      child: Column(
                        children: [
                          Text("SignUp",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: isSignupScreen? Palette.activeColor:Palette.textColor1),
                          ),
                          if(isSignupScreen)
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        height: 2,
                        width: 55,
                        color: Colors.orange,
                      )
                        ],
                      ),
                    )
                  ],
                ),
                if(isSignupScreen)
                buildsignupSection(),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(children: [
                    buildTextField("mariam@gmail.com", false, true),
                    buildTextField("**********", true, false),
                    Row(children: [
                      Checkbox(
                        value: isRememberMe,
                        activeColor: Palette.textColor2,
                       onChanged:(value) {
                        setState(() {
                          isRememberMe = !isRememberMe;
                        });
                       }
                       
                       ),
                       Text("Remember Me",
                       style: TextStyle(
                        fontSize: 12 ,color: Palette.textColor1  
                       ),
                       )
                    ],),
                    TextButton(
                      onPressed: (){}, 
                    child: Text("Forget Password?",
                    style: TextStyle(fontSize: 12, color: Palette.textColor1),))
                  ],),
                )
              ],
            ),
        ),
        ), 
       Positioned(


        
        top: isSignupScreen? 535 : 460,
        right: 0,
        left: 0,
        child: Center(
          child: Container(
            height: 90,
            width: 90,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 249, 119, 33),
                   const Color.fromARGB(255, 225, 79, 69)],
                   begin: Alignment.topLeft,
                   end: Alignment.bottomRight
                   ),
             
             borderRadius:BorderRadius.circular(30),
             boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.3),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1)
              )
             ]
              ),
              child: Icon(Icons.arrow_forward, color: Colors.white,),
            ),
          ),
        )
        ),
        Positioned(
          top: MediaQuery.of(context).size.height-200,
          right: 0,
          left: 0,
          child: Column(children: [
            Text("Or signup with"),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                buildTextbutton("Facebook", Palette.facebookColor),
                buildTextbutton("Google", Palette.googleColor),
              ],),
            )
          ],

        ),
        ),
        ],
      ),
    );
    
  }

  Container buildsignupSection() {
    return Container(
                margin: EdgeInsets.only(top: 10),
               child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  buildTextField( "User name",false, false),
                  buildTextField( "Email",false, true),
                  buildTextField( "Password",true, false),
                  
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Row(
                                              
                                              children: [
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            color: isMale? Palette.textColor2: Colors.transparent,
                            border: Border.all(
                              width: 1,
                              color: isMale? Colors.transparent: Palette.textColor1
                            ),
                            borderRadius: BorderRadius.circular(15)),
                          //child: Icon(
                           // MaterialBasedCupertinoThemeData.account_outline,
                           ///color: isMale? Colors.white: Palette.iconColor,
                            //color: Palette.iconColor,
                          //),
                          
                        ),
                        Text(
                          "Male",
                          style: TextStyle(color: Palette.textColor1),
                        )
                                              ],
                                              
                                            ),
                      ),
                  SizedBox(width: 20,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                            isMale = true;
                          });
                  },
                  child: Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            color: isMale? Colors.transparent: Palette.textColor2,
                            border: Border.all(
                              width: 1,
                              color: isMale? Palette.textColor1: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                          //child: Icon(
                           // MaterialBasedCupertinoThemeData.account_outline,
                            //color: isMale? Palette.iconColor: Colors.white,
                          //),
                        ),
                        Text(
                          "Female",
                          style: TextStyle(color: Palette.textColor1),
                        )
                      ],
                    ),
                )
                    ],),
                    Container(
                      width: 200,
                      margin: EdgeInsets.only(top: 20),
                      child: RichText(
                        textAlign: TextAlign.center,
                        
                        text: TextSpan(
                          text: "By pressing 'submit' yoy agrre to our ",
                          style: TextStyle(color: Palette.textColor2),
                          children: [
                            TextSpan(
                              text: "terms & policy",
                              style: TextStyle(color: Colors.orange),
                            )
                          ]
                        )
                        ),
                    )
                ],
                
               ),

              );
  }

  TextButton buildTextbutton(String title, Color backgroundColor) {
    return TextButton(
              onPressed: (){},
              style: TextButton.styleFrom(
                side: BorderSide(width: 1,color: Colors.grey),
                minimumSize: Size(155, 44),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                primary: Colors.white,
                backgroundColor: backgroundColor,
              ), 
              child: Row(
                children: [
                  //Icon(
                   // materialTextSelectionControls.hashCode()
                   
                  //),
                  SizedBox(
                    width: 5,
                  ),
                  Text(title)
                ],
              ));
  }

  Widget  buildTextField( String hintText, bool isPassword, bool isEmail) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: TextField(
        obscureText: isPassword,
        keyboardType: isEmail ?TextInputType.emailAddress:TextInputType.text,
                      decoration: InputDecoration(
                       // prefixIcon: Icon(
                          //MaterialCommunityIcons.email_outline,
                          //color: Palette.iconColor,
                      // ),
                      
                       enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Palette.textColor1),
                        borderRadius: BorderRadius.all(Radius.circular(35.0)),
                       ),
                       focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Palette.textColor1),
                        borderRadius: BorderRadius.all(Radius.circular(35.0)),
                       ),
                       contentPadding: EdgeInsets.all(10),
                       hintText: hintText,
                       hintStyle: TextStyle(fontSize: 14, color: Palette.textColor1),
                      ),
                    ),
    );
  }
}

