import 'package:flutter/material.dart';

import 'favorite_sent_favorite_received_screen.dart';
import 'like_sent_like_received_screen.dart';
import 'swipping_screen.dart';
import 'user_details_screen.dart';
import 'view_sent_view_received_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int screenIndex = 0;

  List<Widget> tabScreensList = [
    const SwippingScreen(),
    const ViewSentViewReceivedScreen(),
    const FavoriteSentFavoriteReceivedScreen(),
    const LikeSentLikeReceivedScreen(),
    const UserDetailsScreen(),
  ];

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (indexNumber) => setState(() => screenIndex = indexNumber),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        currentIndex: screenIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.remove_red_eye, size: 30), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.star, size: 30), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite, size: 30), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person, size: 30), label: ''),
        ],
      ),
      body: tabScreensList[screenIndex],
    );
  }
}
