import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Medicin extends StatefulWidget {
  @override
  _MedicinState createState() => _MedicinState();
}

class _MedicinState extends State<Medicin> {
  List<Map<String, String>> _medicineList = [
    {'name': 'Medicine 1', 'dosage': '1 pill', 'frequency': 'Once daily'},
    {'name': 'Medicine 2', 'dosage': '2 pills', 'frequency': 'Twice daily'},
    {'name': 'Medicine 3', 'dosage': '1 tablet', 'frequency': 'Every 8 hours'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(27, 92, 142, .9),
        title: Text(
          "Medicine List",
          style: GoogleFonts.comicNeue(
            textStyle: const TextStyle(
              color: Colors.white,
              letterSpacing: .7,
            ),
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/1.png'), // Path to your image
            fit: BoxFit.cover, // Covers the entire screen
          ),
        ),
        padding: EdgeInsets.fromLTRB(300, 0, 300, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("           "),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: _medicineList.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3.0,
                    child: ExpansionTile(
                      title: Text(_medicineList[index]['name']!),
                      children: [
                        ListTile(
                          title: Text('Dosage: ${_medicineList[index]['dosage']}'),
                          subtitle: Text('Frequency: ${_medicineList[index]['frequency']}'),
                        ),
                      ],
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => _removeMedicine(index),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewMedicine,
        child: Icon(Icons.add),
      ),
    );
  }

  void _addNewMedicine() {
    String newName = '';
    String newDosage = '';
    String newFrequency = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add New Medicine'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) {
                  newName = value;
                },
                decoration: InputDecoration(
                  hintText: 'Enter medicine name',
                ),
              ),
              TextField(
                onChanged: (value) {
                  newDosage = value;
                },
                decoration: InputDecoration(
                  hintText: 'Enter dosage',
                ),
              ),
              TextField(
                onChanged: (value) {
                  newFrequency = value;
                },
                decoration: InputDecoration(
                  hintText: 'Enter frequency',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (newName.isNotEmpty && newDosage.isNotEmpty && newFrequency.isNotEmpty) {
                  setState(() {
                    _medicineList.add({
                      'name': newName,
                      'dosage': newDosage,
                      'frequency': newFrequency,
                    });
                  });
                  Navigator.pop(context);
                }
              },
              child: Text('Add'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _removeMedicine(int index) {
    setState(() {
      _medicineList.removeAt(index);
    });
  }
}
