
import 'package:cahrity_project/features/Profile.dart';
import 'package:cahrity_project/features/charities.dart';
import 'package:cahrity_project/features/my_orders.dart';
import 'package:cahrity_project/features/personal_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'emergency_order.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Profile(),
              ),
            );
          },
          icon: Icon(Icons.person),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PersonalInfoPage(),
                    ),
                  );
                },
                icon: Icon(Icons.add_box_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shower_rounded),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text(
                'الصفحة الرئيسية',
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
              ),
              title: const Text(
                'الاشعارات',
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.add_moderator,
              ),
              title: const Text(
                'طلباتي',
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrdersPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings_applications_sharp,
              ),
              title: const Text(
                'الصفحة الشخصية',
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.emergency,
                color: Colors.red,
              ),
              title: const Text(
                "طلب طارئ",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EmergencyOrder(),
                  ),
                );
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 350),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'تسجيل خروج',
                  style: TextStyle(color: Colors.black),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.red,
                  fixedSize: Size(100, 50),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 270),
            child: Text(
              "الاقسام",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Column(
                  children: [
                    InkWell(
                      child: Column(
                        children: [
                          // ImageViewerWidget(image : 'images/apple.PNG' ),
                          Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/apple.PNG'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Charities(),
                        ),
                      ),
                    ),
                    Text(
                      "صحي",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      child: Column(
                        children: [
                          Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/aa.PNG'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "إغاثي",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.lightBlueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      child: Column(
                        children: [
                          Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/life.PNG'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "سبل عيش",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      child: Column(
                        children: [
                          Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/ed.PNG'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "تعليم",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.yellow[700],
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
