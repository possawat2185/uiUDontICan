import 'package:flutter/material.dart';
import 'package:ui_udontican/widgets/drawer.dart';

class HomeUserPage extends StatefulWidget {
  const HomeUserPage({super.key});

  @override
  State<HomeUserPage> createState() => _HomeUserPageState();
}

class _HomeUserPageState extends State<HomeUserPage> {
  String nameProduct = 'หัวปลาพาเพลิน';
  String nameReceiver = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB7F1AE),
      ),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFB7F1AE),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'สวัสดี',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        Image.asset(
                          'assets/images/UDontICan.png',
                          width: 100,
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: SizedBox(
                  width: 200,
                  height: 60,
                  child: FilledButton(
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.add),
                          Text(
                            'ส่งสินค้า',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: SizedBox(
                  width: 200,
                  height: 60,
                  child: FilledButton(
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.local_shipping),
                          Text(
                            'สถานะสินค้า',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          )
                        ],
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'รายการส่งของ',
                            style: TextStyle(fontSize: 24),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card.filled(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                color: const Color(0xFFD6E8CE),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 70,
                            height: 70,
                            child: Image.network(
                                'https://cdn.pixabay.com/photo/2022/05/10/10/35/box-7186750_640.png')),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('รอไรเดอร์มารับสินค้า'),
                              SizedBox(
                                width: 120,
                                  child: Text(
                                'ชื่อสินค้า : $nameProduct',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              )),
                              Text('ชื่อผู้รับ : $nameReceiver'),
                            ],
                          ),
                        ),
                        // const Spacer(),
                        const SizedBox(width: 20,),
                        FilledButton(
                            onPressed: () {},
                            child: const Text('รายละเอียด', style: TextStyle(fontSize: 16),))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
