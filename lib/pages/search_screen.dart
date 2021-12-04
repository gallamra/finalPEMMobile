import 'package:barbershop_online/pages/home_screen.dart';
import 'package:barbershop_online/pages/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> daftarMobil = [
      _cardCard(
        title: 'Toyota Supra',
        cost: '1.000.000/Hari',
        image: 'assets/images/supra.jfif',
      ),
      _cardCard(
        title: 'Toyota New Rush',
        cost: '500.000/Hari',
        image: 'assets/images/rush.png',
      ),
      _cardCard(
        title: 'Toyota Agya',
        cost: '300.000/Hari',
        image: 'assets/images/agya.jpg',
      ),
      _cardCard(
        title: 'New Alpard',
        cost: '2.300.000/Hari',
        image: 'assets/images/alpard.jfif',
      ),
    ];

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
        title: Text(
          'Toyota',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Found 5 results',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: StaggeredGridView.count(
                physics: BouncingScrollPhysics(),
                crossAxisCount: 4,
                staggeredTiles: List.generate(daftarMobil.length, (index) {
                  return StaggeredTile.fit(2);
                }),
                children: List.generate(daftarMobil.length, (index) {
                  return InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ProductDetailScreen())),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: daftarMobil[index],
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _cardCard({@required String title, @required String cost, @required String image}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 240,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
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
