import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Map Screen')),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(37.7749, -122.4194),
          zoom: 13.0,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(37.7749, -122.4194),
                builder: (ctx) => Icon(Icons.location_pin, color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}