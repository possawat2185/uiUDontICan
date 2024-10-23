import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RegisterUserPage extends StatefulWidget {
  const RegisterUserPage({super.key});

  @override
  State<RegisterUserPage> createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  XFile? image;
  // File? saveFile;
  ImagePicker picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(999),
                    child: (image != null)
                        ? Image.file(File(image!.path))
                        : Image.asset(
                            'assets/images/default_person.png',
                          ),
                  )),
              FilledButton(
                  onPressed: () async {
                    image = await picker.pickImage(source: ImageSource.camera);
                    if (image != null) {
                      log(image!.path.toString());
                      setState(() {});
                    } else {
                      log('No Image');
                    }
                  },
                  child: const SizedBox(
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.camera_alt),
                        Text('ถ่ายรูป'),
                      ],
                    ),
                  )),
              FilledButton(
                  onPressed: () async {
                    image = await picker.pickImage(source: ImageSource.gallery);
                    if (image != null) {
                      log(image!.path.toString());
                      setState(() {});
                    } else {
                      log('No Image');
                    }
                  },
                  child: const SizedBox(
                    width: 80,
                    child: Row(
                      children: [
                        Icon(Icons.image_outlined),
                        Text('เลือกรูป'),
                      ],
                    ),
                  )),
              const Padding(
                padding: EdgeInsets.fromLTRB(60, 40, 60, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('หมายเลขโทรศัพท์:'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          // hintText: '',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(60, 20, 60, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('รหัสผ่าน:'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          // hintText: '',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(60, 20, 60, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('ชื่อ:'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.text_decrease),
                          // hintText: '',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(60, 20, 60, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('ที่อยู่:'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.maps_home_work),
                          // hintText: '',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 20, 60, 0),  
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: IconButton.filled(onPressed: (){}, icon: const Icon(Icons.location_pin),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),  
                child: SizedBox(
                  width: 180,
                  height: 50,
                  child: FilledButton(
                    onPressed: (){}, 
                    child: const Text('Register', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
