import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPage'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 80, 80, 40),
                child: Image.asset('assets/images/UDontICan.png', width: 200, height: 140,),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(60, 0, 60, 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('Number:'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          hintText: 'Ex. 012345678',
                          hintStyle: TextStyle(fontSize: 14, color: Color(0x44000000)),
                          filled: true,
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
                          filled: true,
                          prefixIcon: Icon(Icons.password),
                          // hintText: '',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 180,
                height: 50,
                child: FilledButton(
                  onPressed: (){}, 
                  child: const Text('Login', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("If you haven't an account"),
                    TextButton(onPressed: (){}, child: Text('Register'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}