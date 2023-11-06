import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  File? selectedImage;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'Add Image / Icon',
            style: TextStyle(fontFamily: 'Bitter', fontWeight: FontWeight.bold),
          )),
          backgroundColor: Color.fromARGB(255, 4, 225, 221),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 168, 240, 241),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 11),
                child: Container(
                  height: 125,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 2, color: Colors.blueGrey),
                    color: Color.fromARGB(255, 4, 225, 221),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Upload Image",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Bitter',
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic)),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.purple.shade300),
                            onPressed: () {
                              pickImageFromGallery();
                            },
                            child: Text(
                              "Choose from Device",
                              style: TextStyle(color: Colors.white),
                            ))
                      ]),
                ),
              ),
              SizedBox(height: 20),
              selectedImage != null
                  ? Image.file(selectedImage!)
                  : Text(
                      "Please choose an Image!",
                      style: TextStyle(fontSize: 20),
                    )
            ],
          ),
        ),
      ),
    );
  }

  Future pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      selectedImage = File(returnedImage!.path);
    });
  }
}
