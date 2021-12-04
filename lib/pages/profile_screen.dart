import 'package:flutter/material.dart';

import 'home_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()))
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Profil Saya',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Data Pribadi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'ubah',
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(1000),
                        child: Image.asset('assets/images/bayu.jpg'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Bayu Allamra',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'bayuu@gmail.com',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                        Divider(color: Colors.grey),
                        Text(
                          '+6282253247765',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Divider(color: Colors.grey),
                        Text(
                          'Jln. Jendral Sudirman',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              _menuButton(title: 'Order'),
              SizedBox(height: 20),
              _menuButton(title: 'Riwayat Rental Mobil'),
              SizedBox(height: 20),
              _menuButton(title: 'Faq'),
              SizedBox(height: 20),
              _menuButton(title: 'Setting'),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Text("Log Out", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,), textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _menuButton({@required String title, Function() onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Icon(Icons.arrow_forward_ios_rounded),
            ],
          )
      ),
    );
  }
}
