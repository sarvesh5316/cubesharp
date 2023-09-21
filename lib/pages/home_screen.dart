// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cubesharp/consts/consts.dart';
import 'package:cubesharp/pages/widgets/discount.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: unused_field
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("purva",
              style: TextStyle(
                  color: redColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Eastman')),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: redColor,
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 70.0,
        items: [
          buildNavItem(Icons.home_outlined, 'Home'),
          buildNavItem(Icons.favorite_border, 'Wishlist'),
          buildNavItem(Icons.shopping_cart_outlined, 'Cart'),
          buildNavItem(Icons.paste_rounded, 'Order'),
          buildNavItem(Icons.perm_identity, 'Profile'),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.lightBlue.shade50,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VxSwiper.builder(
                autoPlay: true,
                // height: 150,
                aspectRatio: 19 / 9,
                enlargeCenterPage: true,
                itemCount: slidersLists.length,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        slidersLists[index],
                      ));
                }),
            10.heightBox,
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.heightBox,
                  Text(
                    "Categories",
                    style: TextStyle(fontWeight: bold, fontSize: 20),
                  ),
                  20.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(
                            categoriesImages.length,
                            (index) => Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(
                                            image: AssetImage(
                                                categoriesImages[index]),
                                            height: 100,
                                            width: 100,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(categoriesName[index]),
                                  ],
                                ))),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.heightBox,
                  Text(
                    "Top Picks",
                    style: TextStyle(fontWeight: bold, fontSize: 20),
                  ),
                  20.heightBox,
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: categoriesImages.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 15,
                          mainAxisExtent: 300),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(topPicksImages[index]),
                            10.heightBox,
                            Text(topPicksName[index]),
                            10.heightBox,
                            Text(
                              topPicksRating[index],
                              style: TextStyle(
                                  backgroundColor: greenColor,
                                  color: whiteColor,
                                  fontSize: 17),
                              // Icon(Icons.star_border)
                            ),
                            10.heightBox,
                            DiscountPercentageWidget(
                                originalPrice: originalPriceList[index],
                                discountedPrice: discountedPriceList[index]),
                          ],
                        );
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildNavItem(IconData icon, String text) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        icon,
        size: 30,
        color: redColor,
      ),
      // SizedBox(height: 5),
      Text(
        text,
        style: TextStyle(fontSize: 10),
      ),
    ],
  );
}
