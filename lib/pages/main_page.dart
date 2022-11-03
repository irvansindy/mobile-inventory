import 'package:flutter/material.dart';
import 'package:hidable/hidable.dart';
import 'package:main/pages/home_page.dart';
import 'package:main/theme.dart';
import 'package:main/widget/filter_chips.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;
  final _scrollController = ScrollController();

  List<Widget> mainPageWidget = [
    // const Text('Page 1'),
    const HomePage(),
    const FilterChipExample(),
    const Text('Page 2'),
    const Text('Page 3'),
    const Text('Page 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView.separated(
      //   controller: _scrollController, // !Explicitly specify the controller
      //   itemBuilder: (_, i) => Container(
      //     height: 80,
      //     color: Colors.primaries[i % Colors.primaries.length],
      //   ),
      //   separatorBuilder: (_, __) => const SizedBox(height: 10),
      //   itemCount: 100,
      // ),
      body: mainPageWidget[_index],
      bottomNavigationBar: Hidable(
        controller: _scrollController, // !Use the same controller
        child: BottomNavigationBar(
          currentIndex: _index,
          onTap: (i) => setState(() => _index = i),
          items: bottomBarItems(),
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> bottomBarItems() {
    return [
      BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(Icons.home, color: whiteColor),
        backgroundColor: primaryColor1.withOpacity(.9),
      ),
      BottomNavigationBarItem(
        label: 'Favorites',
        icon: Icon(Icons.favorite, color: whiteColor),
        backgroundColor: primaryColor1.withOpacity(.9),
      ),
      BottomNavigationBarItem(
        label: 'Profile',
        icon: Icon(Icons.person, color: whiteColor),
        backgroundColor: primaryColor1.withOpacity(.9),
      ),
      BottomNavigationBarItem(
        label: 'Settings',
        icon: Icon(Icons.settings, color: whiteColor),
        backgroundColor: primaryColor1.withOpacity(.9),
      ),
    ];
  }
}
