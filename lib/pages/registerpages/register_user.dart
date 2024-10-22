import 'package:flutter/material.dart';

class RegisterUserPage extends StatelessWidget {
  const RegisterUserPage({super.key});

  // String default_person_person= 'assets/images/default_person.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(
                  'assets/images/default_person.png',
                  width: 100,
                  height: 100,
                  
                )),
            const Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 60, 52),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Password:'),
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
          ],
        ),
      ),
    );
  }
}
