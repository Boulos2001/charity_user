import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var _emailController = TextEditingController();
  var _passController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/person.png'),
              maxRadius: 90,
              minRadius: 90,
            ),
            Text(
              "اسم المستخدم",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Text(
              "username@gmail.com ",
              style: TextStyle(fontSize: 20),
            ),
            Container(
              padding: EdgeInsets.only(right: 35, left: 35, top: 40),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  label: Text('email'),
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                controller: _emailController,
                validator: (value) {
                  if (_emailController.text.isEmpty) {
                    return 'name must not be empty';
                  }
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 35, left: 35, top: 10),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  label: Text('Password'),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: new GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: new Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                controller: _passController,
                validator: (value) {
                  if (_passController.text.isEmpty) {
                    return 'password must not be empty';
                  }
                },
              ),
            ),
            Container(
              width: 250,
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'تسجيل خروج',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  backgroundColor: Colors.red,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, left: 250),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "تسجيل خروج",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "حذف حسابي",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
