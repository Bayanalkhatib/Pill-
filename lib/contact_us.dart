import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(27, 92, 142, .9),
        title: Text(
          "Contact Us",
          style: GoogleFonts.comicNeue(
            textStyle: const TextStyle(
              color: Colors.white,
              letterSpacing: .7,
            ),
            fontSize: 25,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/1.png'), // Path to your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    'Phone Number:',
                    style: GoogleFonts.comicNeue(
                      textStyle: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(27, 92, 142, 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '+ 962 790123456',
                    style: GoogleFonts.comicNeue(
                      textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Email:',
                    style: GoogleFonts.comicNeue(
                      textStyle: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(27, 92, 142, 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'pillplus@example.com',
                    style: GoogleFonts.comicNeue(
                      textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Website:',
                    style: GoogleFonts.comicNeue(
                      textStyle: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(27, 92, 142, 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'www.pillplus.com',
                    style: GoogleFonts.comicNeue(
                      textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
