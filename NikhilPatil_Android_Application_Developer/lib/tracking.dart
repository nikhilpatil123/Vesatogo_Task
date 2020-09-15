import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

BitmapDescriptor sourceIcon;

class TestMapPolyline extends StatefulWidget {
  @override
  _TestMapPolylineState createState() => _TestMapPolylineState();
}

class _TestMapPolylineState extends State<TestMapPolyline> {
  final Set<Marker> _markers = {};
  final Set<Polyline> _polyline = {};

  GoogleMapController controller;

  List<LatLng> latlngSegment1 = List();

  static LatLng _lat1 = LatLng(21.044219, 75.057042);
  static LatLng _lat2 = LatLng(20.996277, 74.799853);

  LatLng _lastMapPosition = _lat1;

  @override
  void initState() {
    super.initState();

    latlngSegment1.add(_lat1);
    latlngSegment1.add(_lat2);
  }

  @override
  Widget build(BuildContext context) {
    var deviceheight = MediaQuery.of(context).size.height;
    var devicewidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              width: devicewidth * 0.95,
              height: deviceheight * 0.7,
              child: GoogleMap(
                polylines: _polyline,
                markers: _markers,
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _lastMapPosition,
                  zoom: 11.0,
                ),
                mapType: MapType.normal,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blueGrey[50],
            ),
            width: devicewidth * 0.95,
            height: deviceheight * 0.21,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.portrait,
                      size: 30,
                    ),
                    Text(
                      '   Ram Kadam',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Text(
                      '     LIVE     ',
                      style: TextStyle(
                        backgroundColor: Colors.greenAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.confirmation_number,
                      size: 30,
                      color: Colors.red,
                    ),
                    Text(
                      '   MH 15 FB 2844',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueGrey[300]),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.call,
                        ),
                        onPressed: () {
                          print('Call');
                        })
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 80,
                    ),
                    Text(
                      'TATA ACE',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onMapCreated(GoogleMapController controllerParam) {
    setState(() {
      controller = controllerParam;
      _markers.add(Marker(
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        icon: sourceIcon,
      ));

      _polyline.add(Polyline(
        polylineId: PolylineId('line2'),
        visible: true,
        points: latlngSegment1,
        width: 2,
        color: Colors.red,
      ));
    });
  }
}
