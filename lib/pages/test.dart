import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_udontican/pages/home_user.dart';
import 'package:ui_udontican/pages/login.dart';
import 'package:ui_udontican/pages/register.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('testpage'),),
      body: Center(
        child: Column(
          children: [
            FilledButton(onPressed: ()=>{
              Get.to(() => const LoginPage())
            }, child: const Text('login')),
            FilledButton(onPressed: ()=>{
              Get.to(() => const RegisterPage())
            }, child: const Text('register')),
            FilledButton(onPressed: ()=>{
              Get.to(() => const HomeUserPage())
            }, child: const Text('home user')),
          ],
        ),
      ),
    );
  }
}