import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
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
            onPressed: () => Navigator.pop(context)
        ),
        actions: [
          IconButton(icon: Icon(Icons.person, color: Colors.black,), onPressed: () {})
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset('assets/images/jiji.jpeg'),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  dotted(color: Colors.grey, activeColor: Colors.orange,),
                  dotted(color: Colors.grey, activeColor: Colors.orange, isActive: true),
                  dotted(color: Colors.grey, activeColor: Colors.orange,),
                  dotted(color: Colors.grey, activeColor: Colors.orange,),
                ],
              ),
              SizedBox(height: 25),
              Text(
                'Toyota New Alphard',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '2.500.000/Hari',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 25),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deskripsi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Return Policy',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(50)
        ),
        child: Text("Masukkan Pesanan", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,), textAlign: TextAlign.center,),
      ),
    );
  }

  Widget dotted({@required Color color, @required Color activeColor, bool isActive = false}) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? activeColor : color,
      ),
    );
  }
}
