import 'package:barbershop_online/pages/search_screen.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> daftarMobil = [
      _cardCard(title: "BMW M3", cost: "2.500.000/Hari", image: 'assets/images/bmw.jpg'),
      _cardCard(title: "NEW ALPARD", cost: "2.300.000/Hari", image: 'assets/images/alpard.jfif'),
      _cardCard(title: "NEW RUSH", cost: "500.000/Hari", image: 'assets/images/rush.png'),
      _cardCard(title: "SKYLINE", cost: "5.000.000/Hari", image: 'assets/images/line.jpg'),
      _cardCard(title: "350Z", cost: "3.000.000/Hari", image: 'assets/images/350z.jpg'),
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Icon(Icons.menu, color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.black), onPressed: () {})
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Rental Dengan Harga Terjangkau",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: InkWell(child: Icon(Icons.search), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SearchScreen()))),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  hintText: 'Search',
                  fillColor: Colors.grey[300],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TextButton(onPressed: () {}, child: Text('Recent', style: TextStyle(color: Colors.orange),)),
                    TextButton(onPressed: () {}, child: Text('Toyota', style: TextStyle(color: Colors.orange),)),
                    TextButton(onPressed: () {}, child: Text('BMW', style: TextStyle(color: Colors.orange),)),
                    TextButton(onPressed: () {}, child: Text('Honda', style: TextStyle(color: Colors.orange),)),
                    TextButton(onPressed: () {}, child: Text('Yamaha', style: TextStyle(color: Colors.orange),)),
                    TextButton(onPressed: () {}, child: Text('SUV', style: TextStyle(color: Colors.orange),)),
                    TextButton(onPressed: () {}, child: Text('Suzuki', style: TextStyle(color: Colors.orange),)),
                    TextButton(onPressed: () {}, child: Text('Hino', style: TextStyle(color: Colors.orange),)),
                    TextButton(onPressed: () {}, child: Text('Ninja', style: TextStyle(color: Colors.orange),)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 210,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (ctx, index) {
                    return SizedBox(width: 10);
                  },
                  itemCount: daftarMobil.length,
                  itemBuilder: (ctx, index) {
                    return daftarMobil[index];
                  },
                ),
              )
            ],
          ),

        ),
      ),
    );
  }

  Widget _cardCard({@required String title, @required String cost, @required String image}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.asset(image),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  cost,
                  style: TextStyle(
                      color: Colors.orange
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
