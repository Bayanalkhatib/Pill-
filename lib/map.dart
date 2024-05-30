import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapsPicker extends StatefulWidget {
  @override
  _MapsPickerState createState() => _MapsPickerState();
}

class _MapsPickerState extends State<MapsPicker> {
  GoogleMapController? _controller;
  LatLng? _pickedLocation;
  bool _isLocationServiceEnabled = false;

  @override
  void initState() {
    super.initState();
    _checkLocationServices();
  }

  Future<void> _checkLocationServices() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      setState(() {
        _isLocationServiceEnabled = false;
      });
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        setState(() {
          _isLocationServiceEnabled = false;
        });
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      setState(() {
        _isLocationServiceEnabled = false;
      });
      return;
    }

    setState(() {
      _isLocationServiceEnabled = true;
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller = controller;
  }

  void _onTap(LatLng position) {
    setState(() {
      _pickedLocation = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Map Picker'),
      ),
      body:


      _isLocationServiceEnabled
          ? Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(37.7749, -122.4194), // Default location (San Francisco)
              zoom: 10,
            ),
            onMapCreated: _onMapCreated,
            onTap: _onTap,
          ),
          if (_pickedLocation != null)
            Positioned(
              bottom: 50,
              left: 10,
              right: 10,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Picked Location:'),
                    Text(
                      'Lat: ${_pickedLocation!.latitude}, Lng: ${_pickedLocation!.longitude}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // You can add your action here, e.g., save the location or navigate to another screen
                      },
                      child: Text('Confirm Location'),
                    ),
                  ],
                ),
              ),
            ),
        ],
      )
          : Center(
        child: Text('Location services are disabled. Please enable them to use the map picker.'),
      ),
    );
  }
}
