import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailUI extends StatefulWidget {
  String? name;
  String? mobile;
  String? image;
  double lat;
  double lng;

  DetailUI({
    this.name,
    this.mobile,
    this.image,
    required this.lat,
    required this.lng,
  });

  @override
  State<DetailUI> createState() => _DetailUIState();
}

class _DetailUIState extends State<DetailUI> {
  late GoogleMapController mapController;

  @override
  void initState() {
    super.initState();
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: GoogleMap(
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              initialCameraPosition: CameraPosition(
                target: LatLng(widget.lat, widget.lng),
                zoom: 16.0,
              ),
              key: ValueKey('uniqueey'),
              onMapCreated: _onMapCreated,
              /* markers: {
                Marker(
                    markerId: MarkerId('anyUniqueId'),
                    position: LatLng(widget.lat, widget.lng),
                    infoWindow: InfoWindow(title: 'Some Location'))
              }, */
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.red,
        onPressed: () {
          _makePhoneCall(widget.mobile!);
        },
        icon: Icon(Icons.phone_android_rounded),
        label: Text('โทร ${widget.mobile}'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
