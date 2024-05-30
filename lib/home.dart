import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pill_plus/regestration.dart';
import 'package:pill_plus/reminder_sec.dart';

import 'contact_us.dart';
import 'map.dart';
import 'maps.dart';
import 'medicin.dart';

// Separate pages
class DoctorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctors'),
      ),
      body: Center(
        child: Text('Doctors Page'),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Center(
        child: Text('Profile Page'),
      ),
    );
  }
}

class RemindMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remind Me'),
      ),
      body: Center(
        child: Text('Remind Me Page'),
      ),
    );
  }
}

class MedicinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine'),
      ),
      body: Center(
        child: Text('Medicine Page'),
      ),
    );
  }
}

class DeliveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery'),
      ),
      body: Center(
        child: Text('Delivery Page'),
      ),
    );
  }
}

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Center(
        child: Text('Results Page'),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(27, 92, 142, .9),
        title: Text(
          "Home",
          style: GoogleFonts.comicNeue(
            textStyle: const TextStyle(
              color: Colors.white,
              letterSpacing: .7,
            ),
            fontSize: 25,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUs()),
              );
            },
            child: Text('Contact Us', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              // Navigate to Doctors screen
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text('Home', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              // Navigate to My Profile screen
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => DoctorsPage()));
            },
            child: Text('Help', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Reg()));
              // Navigate to Sign Up screen
            },
            child: Text('Sign Up', style: TextStyle(color: Colors.white)),
          ),
        ],
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
            padding: const EdgeInsets.fromLTRB(80, 15, 50, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 30,
                  child: TextField(
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.search_outlined,
                        color: Color.fromRGBO(27, 92, 142, 1),
                      ),
                      labelText: 'Search for medicines',
                      labelStyle: TextStyle(fontSize: 12),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(27, 92, 142, 1), width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(27, 92, 142, 1), width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Popular",
                  style: GoogleFonts.comicNeue(
                    textStyle: const TextStyle(
                      color: Color.fromRGBO(27, 92, 142, 1),
                      letterSpacing: .7,
                    ),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(alignment: Alignment.centerRight,

                  child: SizedBox(
                    width: 700,
                    height: 400,
                    child: GridView.count(
                      crossAxisCount: 3,
                      children: <Widget>[
                        MedicineCard(
                            color: Color.fromRGBO(38 ,100, 157, .9),
                            name: 'Doctors',
                            page: DoctorsPage()),
                        MedicineCard(
                            color: Color.fromRGBO(96, 138, 175, 1),
                            name: 'Medicine',
                            page: Medicin()),
                        MedicineCard(
                            color: Color.fromRGBO(136, 167, 195, 1),
                            name: 'Delivery',
                            page: MapPicker()),
                        MedicineCard(
                            color: Color.fromRGBO(136, 167, 195, 1),
                            name: 'My Profile',
                            page: ProfilePage()),
                        MedicineCard(
                            color: Color.fromRGBO(48 ,99 ,144, 1),
                            name: 'Results',
                            page: ResultsPage()),
                        MedicineCard(
                            color: Color.fromRGBO(90, 130, 171, .9),
                            name: 'Remind Me',
                            page: TableBasicsExample()),
                      ],
                    ),
                  ),


                )
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("lib/clothes_logo.png")),
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: () {
                selectedPage = 0;
                Navigator.pop(context);
                setState(() {});
              },
            ),
            ListTile(
              title: const Text("Setting"),
              leading: const Icon(Icons.settings),
              onTap: () {
                selectedPage = 0;
                Navigator.pop(context);
                setState(() {});
              },
            ),
            ListTile(
              title: const Text("Help"),
              leading: const Icon(Icons.help_sharp),
              onTap: () {
                selectedPage = 0;
                Navigator.pop(context);
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MedicineCard extends StatelessWidget {
  final Color color;
  final String name;
  final Widget page;

  MedicineCard({required this.color, required this.name, required this.page});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the respective page
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },


      child: Card(
        color: color,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                name,
                style: GoogleFonts.comicNeue(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    letterSpacing: .7,
                    fontWeight: FontWeight.bold,
                  ),
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
