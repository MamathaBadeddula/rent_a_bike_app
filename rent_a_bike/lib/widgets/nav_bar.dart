import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 0,
      unselectedFontSize: 0,
      items: const [
        BottomNavigationBarItem(
          icon: IconAsset(icon: 'Home'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: IconAsset(icon: 'Map Marker'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: IconAsset(icon: 'Card Wallet'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: IconAsset(icon: 'Settings'),
          label: '',
        ),
      ],
    );
  }
}

class IconAsset extends StatelessWidget {
  const IconAsset({
    super.key,
    required this.icon,
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$icon.png',
      height: 30,
      width: 30,
    );
  }
}
