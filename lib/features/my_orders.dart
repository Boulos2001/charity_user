import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OredersPageState();
}

class _OredersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("طلباتي"),
        centerTitle: true,
        leading: Icon(Icons.shopping_cart),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
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
                        BoxShadow(
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
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      height: 140.0,
                      width: 200.0,
                      child: Image.asset(
                        ('images/apple.PNG'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    right: 0.0,
                    child: SizedBox(
                      height: 136.0,
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text("اسم الطلب"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text("بعض التفاصيل"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
