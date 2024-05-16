import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AccessCamera extends StatefulWidget {
  const AccessCamera({Key? key}) : super(key: key);

  @override
  State<AccessCamera> createState() => _AccessCameraState();
}

class _AccessCameraState extends State<AccessCamera> {
  XFile? image;

  Future<void> imageKamera() async {
    var res = await ImagePicker().pickImage(source: ImageSource.camera);
    if (res != null) {
      setState(() {
        image = res;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Access Camera'),
        centerTitle: true,
        backgroundColor: Colors.grey,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () async {
            await imageKamera();
          },
          child: image != null
              ? Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 5, color: Colors.grey),
            ),
            child: Image.network(
              image!.path, // Menampilkan gambar yang diambil dari kamera
            ),
          )
              : const Icon(
            Icons.camera_alt_outlined,
            size: 50,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}