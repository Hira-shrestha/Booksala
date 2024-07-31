import 'package:flutter/material.dart';
import 'package:library_store/feature/books/presentation/pages/book_list.dart';
import 'package:library_store/feature/mybooks/presentation/pages/my_books.dart';
import 'package:library_store/feature/settings/settings_screen.dart';

class TabBarController extends StatelessWidget {
  const TabBarController({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: menu(),
          body: TabBarView(
            children: [
              BookListingScreen(),
              // Icon(Icons.directions_transit),
              const MyBooksScreen(),
              const SettingsScreen(),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return Container(
      color: const Color(0xFF3F5AA6),
      child: const TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
        tabs: [
          Tab(
            text: "All books",
            icon: Icon(Icons.book_sharp),
          ),
          Tab(
            text: "My books",
            icon: Icon(Icons.book_online_rounded),
          ),
          Tab(
            text: "Options",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
