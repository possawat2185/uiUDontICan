import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  XFile? product_image;
  ImagePicker picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('เพิ่มสินค้า', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(999),
                      child: (product_image != null)
                          ? Image.file(File(product_image!.path))
                          : Image.network('https://cdn.pixabay.com/photo/2022/05/10/10/35/box-7186750_640.png')
                    )),
              ),
              FilledButton(
                  onPressed: () async {
                    product_image = await picker.pickImage(source: ImageSource.camera);
                    if (product_image != null) {
                      log(product_image!.path.toString());
                      setState(() {});
                    } else {
                      log('No Image');
                    }
                  },
                  child: const Text('ถ่ายรูป')),
              FilledButton(
                  onPressed: () async {
                    product_image = await picker.pickImage(source: ImageSource.gallery);
                    if (product_image != null) {
                      log(product_image!.path.toString());
                      setState(() {});
                    } else {
                      log('No Image');
                    }
                  },
                  child: const Text('เลือกรูป')),
              const Padding(
                padding: EdgeInsets.fromLTRB(60, 40, 60, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('ชื่อสินค้า:'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        // decoration: InputDecoration(
                        //   prefixIcon: Icon(Icons.),
                        //   // hintText: '',
                        // ),
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
                      child: Text('หมายเลขโทรศัพท์ผู้รับ:'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextField(
                        keyboardType: TextInputType.phone,
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
                      child: Text('รายละเอียดสินค้า:'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        maxLines: 4,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),  
                child: SizedBox(
                  width: 180,
                  height: 50,
                  child: FilledButton(
                    onPressed: (){}, 
                    child: const Text('ตกลง', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
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