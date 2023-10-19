// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';
// import 'package:location/location.dart';
//
// void main() {
//   runApp(MaterialApp(home: MyMap()));
// }
//
// class MyMap extends StatefulWidget {
//   @override
//   _MyMapState createState() => _MyMapState();
// }
//
// class _MyMapState extends State<MyMap> {
//    LocationData _currentLocation;
//
//    Stream<LocationData> _locationStream;
//
//   @override
//   void initState() {
//     super.initState();
//     _getLocationStream();
//   }
//
//   Future<void> _getLocationStream() async {
//     try {
//       var location = Location();
//       bool serviceEnabled = await location.serviceEnabled();
//       if (!serviceEnabled) {
//         serviceEnabled = await location.requestService();
//         if (!serviceEnabled) {
//           return;
//         }
//       }
//
//       PermissionStatus permissionGranted = await location.hasPermission();
//       if (permissionGranted == PermissionStatus.denied) {
//         permissionGranted = await location.requestPermission();
//         if (permissionGranted != PermissionStatus.granted) {
//           return;
//         }
//       }
//
//       _locationStream = location.onLocationChanged;
//     } catch (e) {
//       print("Error: $e");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Live Location Map'),
//       ),
//       body: StreamBuilder<LocationData>(
//         stream: _locationStream,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else {
//             _currentLocation = snapshot.data!;
//             return FlutterMap(
//               options: MapOptions(
//                 center: LatLng(
//                   _currentLocation?.latitude ?? 0,
//                   _currentLocation?.longitude ?? 0,
//                 ),
//                 zoom: 13.0,
//               ),
//               // layers: [
//               //   TileLayerOptions(
//               //     urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
//               //     subdomains: ['a', 'b', 'c'],
//               //   ),
//               //   MarkerLayerOptions(
//               //     markers: [
//               //       Marker(
//               //         width: 40.0,
//               //         height: 40.0,
//               //         point: LatLng(
//               //           _currentLocation?.latitude ?? 0,
//               //           _currentLocation?.longitude ?? 0,
//               //         ),
//               //         builder: (ctx) => Container(
//               //           child: Icon(
//               //             Icons.location_on,
//               //             color: Colors.red,
//               //           ),
//               //         ),
//               //       ),
//               //     ],
//               //   ),
//
//             );
//           }
//         },
//       ),
//     );
//   }
// }
