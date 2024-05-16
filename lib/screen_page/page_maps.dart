import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsFlutter extends StatefulWidget {
  const MapsFlutter({Key? key}) : super(key: key);

  @override
  State<MapsFlutter> createState() => _MapsFlutterState();
}

class _MapsFlutterState extends State<MapsFlutter> {
  late BitmapDescriptor customIcon;

  @override
  void initState() {
    super.initState();
    _loadCustomIcon();
  }

  void _loadCustomIcon() async {
    customIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(248, 100)),
      'assets/rm1.jpg',
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maps'),
        centerTitle: true,
        backgroundColor: Colors.grey,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      body: GoogleMap(
        myLocationEnabled: true,
        initialCameraPosition: const CameraPosition(
          target: LatLng(-6.297950949676951, 106.6989246837098),
          zoom: 16,
        ),
        mapType: MapType.normal,
        markers: {
          Marker(
            markerId: const MarkerId("Ayam Penyet"),
            position: const LatLng(-6.297950949676951, 106.6989246837098),
            infoWindow: const InfoWindow(
              title: 'Ayam Penyet RestArea',
              snippet: 'Ciwidey, Bandung',
            ),
            icon: customIcon,
          ),
        },
      ),
    );
  }
}
