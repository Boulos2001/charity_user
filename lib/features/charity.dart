
import 'package:cahrity_project/features/personal_info.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Charity extends StatefulWidget {
  const Charity({super.key});

  @override
  State<Charity> createState() => _CharityState();
}

class _CharityState extends State<Charity> {
  int _currentImageIndex = 0;
  CarouselController _carouselController = CarouselController();
  int _currentImageIndex1 = 0;

  void goToPrevious() {
    _carouselController.previousPage();
  }

  void goToNext() {
    _carouselController.nextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.only(right: 180),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PersonalInfoPage(),
                  ),
                );
              },
              icon: Icon(Icons.add_circle),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Text(
              "اسم الجمعية",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: CarouselSlider(
                items: [
                  Image.asset('images/apple.PNG'),
                  Image.asset('images/whatsapp.PNG'),
                  Image.asset('images/whatsapp.PNG'),
                ],
                options: CarouselOptions(
                  height: 100,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, _) {
                    setState(() {
                      _currentImageIndex = index;
                    });
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => buildIndicator(index),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 70,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Padding(
                padding: const EdgeInsets.only(left: 240),
                child: Text(
                  ":وصف عن الجمعية",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            Text("___________________________________________"),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 280),
              child: Text(
                ":الفعاليات",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            CarouselSlider(
              carouselController: _carouselController,
              items: [
                Image.asset('images/email.PNG'),
                Image.asset('images/whatsapp.PNG'),
                Image.asset('images/whatsapp.PNG'),
              ],
              options: CarouselOptions(
                height: 80,
                enableInfiniteScroll: false,
                onPageChanged: (index, _) {
                  setState(() {
                    _currentImageIndex1 = index;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 250),
              child: Text(
                ":اعضاء الجمعية",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/whatsapp.PNG'),
                        minRadius: 35,
                        maxRadius: 35,
                      ),
                      Text("عضو 1"),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/facebook.PNG'),
                        minRadius: 35,
                        maxRadius: 35,
                      ),
                      Text("عضو 2"),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/twiter.PNG'),
                        minRadius: 35,
                        maxRadius: 35,
                      ),
                      Text("عضو 3"),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/email.PNG'),
                        minRadius: 35,
                        maxRadius: 35,
                      ),
                      Text("عضو 4"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 10,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              margin: EdgeInsets.only(top: 50),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text(
                      ":للتواصل",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50, top: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('images/whatsapp.PNG'),
                            minRadius: 35,
                            maxRadius: 35,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('images/facebook.PNG'),
                            minRadius: 35,
                            maxRadius: 35,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('images/twiter.PNG'),
                            minRadius: 35,
                            maxRadius: 35,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('images/email.PNG'),
                            minRadius: 35,
                            maxRadius: 35,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(int index) {
    return Container(
      width: 8,
      height: 8,
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentImageIndex == index ? Colors.blue : Colors.grey,
      ),
    );
  }
}
