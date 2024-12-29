import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/core/extensions/context_extensions.dart';
import 'package:flutter_starter/feature/Home/widget/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Krikad',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar and location
            Container(
              color: Colors.green,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search for fruits, vegetables, groceries...',
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Icon(Icons.location_on_outlined, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        'Sent to MIG-364, Kolkata',
                        style: TextStyle(color: Colors.white),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_drop_down, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),

            // Banner carousel
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: MediaQueryExtension(context).dynamicHeight(0.2),
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
                items: [
                  bannerCard(
                    'Discount 25%',
                    'All Vegetables & Fruits',
                    'See Detail',
                    Colors.green,
                  ),
                  bannerCard(
                    'Offer 15%',
                    'Bakery Items',
                    'Check Now',
                    Colors.orange,
                  ),
                ],
              ),
            ),

            // Categories
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16),
            //   child: Text(
            //     'Categories',
            //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            //   ),
            // ),
            // const SizedBox(height: 10),
            // SizedBox(
            //   height: 80,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       categoryItem('Vegetables', 'assets/images/vegetables.png'),
            //       categoryItem('Fruits', 'assets/images/fruits.png'),
            //       categoryItMontserratem('Meat & Eggs', 'assets/images/meat.png'),
            //       categoryItem('Drinks', 'assets/images/drinks.png'),
            //       categoryItem('Bakery', 'assets/images/bakery.png'),
            //     ],
            //   ),
            // ),

            // Special Deal
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special Deal',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  specialDealItem(
                    'Fresh Carrot',
                    'assets/images/carrot.png',
                    'Rs 18/kg',
                  ),
                  specialDealItem(
                    'Fresh Tomato',
                    'assets/images/tomato.png',
                    'Rs 14/kg',
                  ),
                  specialDealItem(
                    'Fresh Potato',
                    'assets/images/potato.png',
                    'Rs 10/kg',
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
