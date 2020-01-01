import 'package:flutter/material.dart';

class APIChoiceNavbar extends StatelessWidget {
  final int currentIndex;
  final Function onTap;

  APIChoiceNavbar({this.currentIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.network(
            'https://pngriver.com/wp-content/uploads/2018/04/Download-Rick-And-Morty-PNG-Photos.png',
            height: 40,
          ),
          title: Text('Rick and Morty'),
        ),
        BottomNavigationBarItem(
          icon: Container(
            child: Image.network(
              'https://cdn3.iconfinder.com/data/icons/web-and-user-interface-icons-5/512/272-512.png',
              height: 30,
            ),
            padding: EdgeInsets.all(3),
          ),
          title: Text('JSON Placeholder'),
        ),
      ],
      currentIndex: currentIndex,
      // selectedItemColor: Colors.amber[800],
      onTap: onTap,
    );
  }
}
