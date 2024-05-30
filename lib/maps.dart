import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MapPicker extends StatefulWidget {
  const MapPicker({super.key});

  @override
  State<MapPicker> createState() => _MapPickerState();
}

class _MapPickerState extends State<MapPicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(27, 92, 142, .9),
        title: Text(
          "Delivery",
          style: GoogleFonts.comicNeue(
            textStyle: const TextStyle(color: Colors.white, letterSpacing: .7),
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.topCenter, // or Alignment.topLeft
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Add some space between text and image
              Image.asset(
                'lib/3.jpg', // Replace 'lib/3.jpg' with your image asset path
                width: 700, // Adjust width as needed
                height: 700, // Adjust height as needed
              ),
            ],
          ),
        ),
      ),
    );
  }
}
