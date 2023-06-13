import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemsNavigatorBar extends StatelessWidget {
  const ItemsNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 1,
      unselectedFontSize: 1,
      selectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 30,
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/add.svg',
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
            width: 30,
            height: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/videos.svg',
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
            width: 30,
            height: 30,
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            size: 30,
          ),
          label: '',
        ),
      ],
    );
  }
}
