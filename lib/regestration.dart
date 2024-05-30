import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class Reg extends StatefulWidget {
  const Reg({super.key});

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  bool obscureText = true;
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( backgroundColor: Color.fromRGBO(27, 92, 142, .9),
          title: Text("Sign Up", style: GoogleFonts.comicNeue(
            textStyle: const TextStyle(
                color: Colors.white, letterSpacing: .7),
            fontSize: 25)),),

        //title: const Text("App Name",style: TextStyle(color: Colors.white,fontSize: 24,),

        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/1.png'), // Path to your image
                fit: BoxFit.cover, // Covers the entire screen
              ),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(" Pill +",
                        style: GoogleFonts.comicNeue(
                            textStyle: const TextStyle(
                                color: Color.fromRGBO(27, 92, 142, 1),
                                letterSpacing: .7,fontWeight: FontWeight.bold),
                            fontSize: 70)),
                    const Text("                    "),
                    //Name
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(""),
                        Container(
                          width: 205,
                          height: 35,
                          child: TextField(
                            onChanged: (value) {
                              // Do something with the user input.
                            },
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.account_circle_outlined,
                                color: Color.fromRGBO(27, 92, 142, 1),
                              ),
                              labelText: 'First Name',
                              labelStyle: TextStyle(fontSize: 12),
                              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color.fromRGBO(27, 92, 142, 1), width: 1.0),
                                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2.0),
                                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                              ),
                            ),
                          ),
                        ),
                        Text("   "),
                        Container(
                          width: 181,
                          height: 35,
                          child: TextField(
                            onChanged: (value) {
                              // Do something with the user input.
                            },
                            decoration: const InputDecoration(
                              labelText: 'Last Name',
                              labelStyle: TextStyle(fontSize: 12),
                              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color.fromRGBO(27, 92, 142, 1), width: 1.0),
                                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2.0),
                                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                    const Text("                   "),
                    //NN
                    Container(
                      width: 400,
                      height: 35,
                      child: TextField(
                        onChanged: (value) {
                          //Do something with the user input.
                        },
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.credit_card_outlined,color: Color.fromRGBO(27, 92, 142, 1),
                          ),
                          labelText: 'Enter Your National Number',labelStyle: TextStyle(fontSize: 12),
                          //hintText: 'your name',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(32.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(27, 92, 142, 1), width: 1.0),
                            borderRadius:
                            BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white, width: 2.0),
                            borderRadius:
                            BorderRadius.all(Radius.circular(32.0)),
                          ),
                        ),
                      ),
                    ),
                    const Text("                   "),
                    //Phone
                    Container(
                      width: 400,
                      height: 35,
                      child: TextField(
                        onChanged: (value) {
                          //Do something with the user input.
                        },
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.phone_outlined,color: Color.fromRGBO(27, 92, 142, 1),
                          ),
                          labelText: 'Enter a Phone Number',labelStyle: TextStyle(fontSize: 12),
                          //hintText: 'your name',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(32.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(27, 92, 142, 1), width: 1.0),
                            borderRadius:
                            BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white, width: 2.0),
                            borderRadius:
                            BorderRadius.all(Radius.circular(32.0)),
                          ),
                        ),
                      ),
                    ),
                    const Text("                   "),
                    //Email
                    Container(
                      width: 400,
                      height: 35,
                      child: TextField(
                        onChanged: (value) {
                          //Do something with the user input.
                        },
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.email_outlined,color: Color.fromRGBO(27, 92, 142, 1),
                          ),
                          labelText: 'Enter a Valid Email',labelStyle: TextStyle(fontSize: 12),
                          //hintText: 'your name',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(32.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(27, 92, 142, 1), width: 1.0),
                            borderRadius:
                            BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white, width: 2.0),
                            borderRadius:
                            BorderRadius.all(Radius.circular(32.0)),
                          ),
                        ),
                      ),
                    ),
                    const Text("                   "),
                    //Password
                    Container(
                      width: 400,
                      height: 35,
                      child: TextFormField(
                        obscureText: obscureText,
                        validator: (password) {
                          if (password!.length > 10)
                            return "The password is wrong !";
                          else
                            return null;
                        },
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye_outlined),color: Color.fromRGBO(27, 92, 142, 1),
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                          ),
                          icon: Icon(
                            Icons.lock_outline,color: Color.fromRGBO(27, 92, 142, 1),
                          ),
                          labelText: 'Enter a Strong Password',labelStyle: TextStyle(fontSize: 12),
                          //hintText: 'Enter your password.',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(32.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(27, 92, 142, 1), width: 1.0),
                            borderRadius:
                            BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white, width: 2.0),
                            borderRadius:
                            BorderRadius.all(Radius.circular(32.0)),
                          ),
                        ),
                      ),
                    ),


                    Text("                      "),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      },
                      child: Text(
                          'Sign Up Now !',
                          style: GoogleFonts.comicNeue(
                              textStyle: const TextStyle(
                                  color: Colors.white, letterSpacing: .5),
                              fontSize: 20)

                      ),


                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(27, 92, 142, .9)),
                    ),

                  ]),
            ))
    );
  }
}
