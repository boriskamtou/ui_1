import 'package:flutter/material.dart';
import 'package:flutter_challenge_ui_1/src/models/donut.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class ProductOverViewScreen extends StatefulWidget {
  static const routeName = '/product-overview';

  @override
  _ProductOverViewScreenState createState() => _ProductOverViewScreenState();
}

class _ProductOverViewScreenState extends State<ProductOverViewScreen> {
  List<Donut> list = [
    Donut(
      name: 'Croissant',
      description: '3 différent types de croissant',
      price: 12.99,
      imagePath: 'assets/images/donuts4.jpg',
    ),
    Donut(
      name: 'Croissant',
      description: '3 différent types de croissant',
      price: 12.99,
      imagePath: 'assets/images/donuts4.jpg',
    ),
    Donut(
      name: 'Croissant',
      description: '3 différent types de croissant',
      price: 12.99,
      imagePath: 'assets/images/donuts4.jpg',
    ),
    Donut(
      name: 'Croissant',
      description: '3 différent types de croissant',
      price: 12.99,
      imagePath: 'assets/images/donuts4.jpg',
    ),
    Donut(
      name: 'Croissant',
      description: '3 différent types de croissant',
      price: 12.99,
      imagePath: 'assets/images/donuts4.jpg',
    ),
    Donut(
      name: 'Croissant',
      description: '3 différent types de croissant',
      price: 12.99,
      imagePath: 'assets/images/donuts4.jpg',
    ),
    Donut(
      name: 'Croissant',
      description: '3 différent types de croissant',
      price: 12.99,
      imagePath: 'assets/images/donuts4.jpg',
    ),
    Donut(
      name: 'Croissant',
      description: '3 différent types de croissant',
      price: 12.99,
      imagePath: 'assets/images/donuts4.jpg',
    ),
    Donut(
      name: 'Croissant',
      description: '3 différent types de croissant',
      price: 12.99,
      imagePath: 'assets/images/donuts4.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            LineAwesomeIcons.arrow_left,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          'La Brioche Doree',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Pastries',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Divider(),
            Expanded(
              child: ListView.separated(
                itemBuilder: (_, i) => InkWell(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            list[i].name,
                            style: GoogleFonts.merriweather(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 4,
                              bottom: 12,
                            ),
                            child: Text(
                              list[i].description,
                              style: GoogleFonts.merriweather(
                                color: Colors.black26,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Text(
                            'from ' + list[i].price.toString() + '£',
                            style: GoogleFonts.merriweather(
                                fontSize: 16,
                                color: Theme.of(context)
                                    .accentColor
                                    .withOpacity(.8),
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          list[i].imagePath,
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (_, i) => Divider(
                  color: Colors.black12,
                ),
                itemCount: list.length,
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).accentColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.orangeAccent.shade700,
                    ),
                    child: Center(
                      child: Text(
                        '4',
                        style: GoogleFonts.merriweather(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Checkout',
                    style: GoogleFonts.merriweather(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '12.99 £',
                    style: GoogleFonts.merriweather(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.orangeAccent.shade100,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
