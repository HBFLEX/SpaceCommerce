import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:space_commerce/components/curated_list.dart';
import 'package:space_commerce/components/shop_category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ShopCategory> _categories = const [
    ShopCategory(
      imagePath: 'assets/images/1 (18).jpeg',
      name: 'Women',
    ),
    ShopCategory(
      imagePath: 'assets/images/1 (15).jpeg',
      name: 'Men',
    ),
    ShopCategory(
      imagePath: 'assets/images/1 (35).jpeg',
      name: 'Teens',
    ),
    ShopCategory(
      imagePath: 'assets/images/1 (26).jpeg',
      name: 'Kids',
    ),
    ShopCategory(
      imagePath: 'assets/images/1 (16).jpeg',
      name: 'Babies',
    ),
  ];

  final List<CuratedList> _curatedItems = const [
    CuratedList(
      imagePath: 'assets/images/1 (5).jpeg',
      brandName: 'East AAA',
      itemName: 'Black Printed Hoody',
      stars: '4.9',
      votes: '132',
      price: 255.00,
      discountPrice: 555.00,
    ),
    CuratedList(
      imagePath: 'assets/images/1 (22).jpeg',
      brandName: 'Void Core',
      itemName: 'Colorful Bottoms',
      stars: '5.0',
      votes: '540',
      price: 355.00,
      discountPrice: 120.00,
    ),
    CuratedList(
      imagePath: 'assets/images/1 (34).jpeg',
      brandName: 'Dim Light',
      itemName: 'Aesthetic Shorts',
      stars: '3.9',
      votes: '241',
      price: 100.00,
      discountPrice: 10.99,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // top bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/logo.png',
                      height: 50,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_active_outlined),
                      iconSize: 37,
                    ),
                  ],
                ),
              ),
              // hero image
              Stack(
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/1 (10).jpeg',
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 12,
                              spreadRadius: 0.0,
                              blurStyle: BlurStyle.normal),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 23),
                          // new collections
                          const Text(
                            'NEW COLLECTIONS',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // 20% off
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '20',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 68,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '%',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 38,
                                    ),
                                  ),
                                  Text(
                                    'OFF',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 23,
                          ),
                          // shop now
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            decoration: const BoxDecoration(
                              color: Colors.black,
                            ),
                            child: const Text(
                              'SHOP NOW',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              // shop by category
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Shop By Category',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // categories
              SizedBox(
                height: 160,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: ListView.builder(
                    itemCount: _categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ShopCategory(
                          imagePath: _categories[index].imagePath,
                          name: _categories[index].name);
                    },
                  ),
                ),
              ),
              // curated for you
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Curated For You',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // item card
              SizedBox(
                height: 400,
                child: ListView.builder(
                  itemCount: _curatedItems.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return CuratedList(
                        imagePath: _curatedItems[index].imagePath,
                        brandName: _curatedItems[index].brandName,
                        stars: _curatedItems[index].stars,
                        votes: _curatedItems[index].votes,
                        itemName: _curatedItems[index].itemName,
                        price: _curatedItems[index].price,
                        discountPrice: _curatedItems[index].discountPrice,
                    );
                  }
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: const Padding(
          padding: EdgeInsets.all(0),
          child: GNav(
            backgroundColor: Colors.black87,
            color: Colors.white,
            activeColor: Colors.white,
            padding: EdgeInsets.all(10),
            gap: 5,
            tabs: [
              GButton(icon: Icons.home, text: 'Home',),
              GButton(icon: Icons.search, text: 'Explore',),
              GButton(icon: Icons.notifications, text: 'Notifications',),
              GButton(icon: Icons.person_off, text: 'Profile',),
            ],
          ),
        ),
      ),
    );
  }
}
