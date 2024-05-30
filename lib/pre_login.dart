import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pill_plus/regestration.dart';
import 'login.dart';

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(27, 92, 142, .9),
          title: Text("Sign In",
              style: GoogleFonts.comicNeue(
                  textStyle:
                      const TextStyle(color: Colors.white, letterSpacing: .7),
                  fontSize: 25)),
        ),
        body: Stack(fit: StackFit.expand, children: [
          Image.asset(
            'lib/1.png', // Path to your background image
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => login()),
                      );
                    },
                    child: Text('I am a Doctor',
                        style: GoogleFonts.comicNeue(
                            textStyle: const TextStyle(
                                color: Colors.white, letterSpacing: .5),
                            fontSize: 19.3)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(27, 92, 142, .9)),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => login()));
                    },
                    child: Text('I am a Patient',
                        style: GoogleFonts.comicNeue(
                            textStyle: const TextStyle(
                                color: Colors.white, letterSpacing: .5),
                            fontSize: 19.3)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(27, 92, 142, .9)),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
