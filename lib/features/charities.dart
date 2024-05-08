
import 'package:cahrity_project/features/charity.dart';
import 'package:cahrity_project/features/personal_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Charities extends StatefulWidget {
  const Charities({super.key});

  @override
  State<Charities> createState() => _CharitiesState();
}

class _CharitiesState extends State<Charities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.black),
            color: Colors.white,
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'بحث',
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.all(10.0),
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PersonalInfoPage(),
              ),
            );
          },
          icon: const Icon(Icons.add_circle_outline_rounded),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: InkWell(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 160.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow: [
                    const BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 20.0,
                left: 0.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  height: 140.0,
                  width: 200.0,
                  child: Image.asset(
                    ('images/apple.PNG'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Positioned(
                bottom: 0.0,
                right: 0.0,
                child: SizedBox(
                  height: 136.0,
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text("جمعية 1"),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text(" وصف الجمعية 1"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Charity(),
            ),
          ),
        ),
      ),
    );
  }
}
