import 'package:flutter/material.dart';
import 'Components/BottomNav.dart';
import './Pages/Wallet.dart';
import './Pages/MainPage.dart';
import './Pages/Profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(),
    );
  }
}

class _NavigatorState extends State<Navigator> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [MainPage(), Wallet(), Profile()];
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigator(
        selectedIndex: _selectedIndex,
        onIndexChanged: (int index) {
          _pageController.jumpToPage(index);
        },
      ),
    );
  }
}

class Navigator extends StatefulWidget {
  const Navigator({Key? key}) : super(key: key);

  @override
  State<Navigator> createState() => _NavigatorState();
}
















// import 'package:flutter/material.dart';
// import 'Components/BottomNav.dart';
// import './Pages/Wallet.dart';
// import './Pages/MainPage.dart';
// import 'Pages/Profile.dart';



// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Navigator(),
//     );
//   }
// }

// class _NavigatorState extends State<Navigator> {
//   int _selectedIndex = 0;
//   final List<Widget> _pages = [MainPage(), Wallet(), Profile()];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: _pages[_selectedIndex],
//         bottomNavigationBar: BottomNavigator(
//           selectedIndex: _selectedIndex,
//           onIndexChanged: (int index) {
//             setState(() {
//               _selectedIndex = index;
//             });
//           },
//         ));
//   }
// }

// class Navigator extends StatefulWidget {
//   const Navigator({super.key});

//   @override
//   State<Navigator> createState() => _NavigatorState();
// }

