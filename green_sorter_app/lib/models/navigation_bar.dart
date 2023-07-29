import 'package:flutter/material.dart';
import '../screens/collection/collection_page.dart';
import '../screens/dictionary/dictionary_page.dart';
import '../screens/homepage/homepage.dart';
import '../screens/setting/setting_page.dart';

class AppData {
  static int selectedIndex = 0;
}

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarWidgetState createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = AppData.selectedIndex;



  void _onItemTapped(int index) {
    if (index != _selectedIndex) {
      setState(() {
        AppData.selectedIndex = index;
      });

      switch (index) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
          break;
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CollectionPage(),
            ),
          );
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DictionaryPage(),
            ),
          );
          break;
        case 3:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SettingPage(),
            ),
          );
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () => _onItemTapped(0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home, color: _selectedIndex == 0 ? Colors.blue : null),
                      Text('Home', style: TextStyle(color: _selectedIndex == 0 ? Colors.blue : null)),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () => _onItemTapped(1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.collections_bookmark, color: _selectedIndex == 1 ? Colors.blue : null),
                      Text('Thành tựu', style: TextStyle(color: _selectedIndex == 1 ? Colors.blue : null)),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () => _onItemTapped(2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.list_alt, color: _selectedIndex == 2 ? Colors.blue : null),
                      Text('Tra cứu', style: TextStyle(color: _selectedIndex == 2 ? Colors.blue : null)),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () => _onItemTapped(3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.settings, color: _selectedIndex == 3 ? Colors.blue : null),
                      Text('Cài đặt', style: TextStyle(color: _selectedIndex == 3 ? Colors.blue : null)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

BottomNavigationBarWidget bottomNavigationBarWidget = BottomNavigationBarWidget();
