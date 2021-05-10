import 'package:flutter/material.dart';
import 'package:pshar_khmer/modules/home/containerView/CartContainerView.dart';
import 'package:pshar_khmer/modules/home/containerView/HomeContainer.dart';
import 'package:pshar_khmer/modules/home/containerView/favorite/favoriteContainerView.dart';
import 'package:pshar_khmer/modules/home/containerView/profileContainerView.dart';
import 'package:pshar_khmer/modules/home/containerView/searchContainer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _bodyContainViews = [
    HomeContainerView(),
    SearchContainerView(),
    CartContainerView(),
    FavoriteContainerView(),
    ProfileContainerView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _bodyContainViews[_selectedIndex],),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: bottomItemClick,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_outlined),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  void bottomItemClick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
