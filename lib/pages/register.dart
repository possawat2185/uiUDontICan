import 'package:flutter/material.dart';
import 'package:ui_udontican/pages/registerpages/register_raider.dart';
import 'package:ui_udontican/pages/registerpages/register_user.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool selectedPageRegister = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 120,
                        height: 50,
                        child: FilledButton(
                          onPressed: () {
                            setState(() {
                              selectedPageRegister = true;
                            });
                          },
                          style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  const Color(0xFFB7F1AE)),
                              shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      side: selectedPageRegister
                                          ? const BorderSide(
                                              color: Color(0xFF1B6D24),
                                              width: 3)
                                          : BorderSide.none,
                                      borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(30),
                                          bottomLeft: Radius.circular(30))))),
                          child: const Text(
                            'ผู้ใช้ทั่วไป',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        height: 50,
                        child: FilledButton(
                          onPressed: () {
                            setState(() {
                              selectedPageRegister = false;
                            });
                          },
                          style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  const Color(0xFFBCEBF0)),
                              shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      side: selectedPageRegister
                                          ? BorderSide.none
                                          : const BorderSide(
                                              color: Color(0xFF1B6D24),
                                              width: 3),
                                      borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                          topLeft: Radius.circular(0),
                                          bottomLeft: Radius.circular(0))))),
                          child: const Text(
                            'ไรเดอร์',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Expanded(
                    child: selectedPageRegister
                        ? const RegisterUserPage()
                        : const RegisterRaiderPage(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
