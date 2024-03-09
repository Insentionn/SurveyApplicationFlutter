import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onIndexChanged;

  const BottomNavigator({
    Key? key,
    required this.selectedIndex,
    required this.onIndexChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
      ],
      onTap: (index) {
        onIndexChanged(index);
      },
    );
  }
}








// import 'package:flutter/material.dart';

// class BottomNavigator extends StatelessWidget {
//   final int selectedIndex;
//   final ValueChanged<int> onIndexChanged;

//   const BottomNavigator({
//     Key? key,
//     required this.selectedIndex,
//     required this.onIndexChanged,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       currentIndex: selectedIndex,
//       items: [
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//         BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
//         BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
//       ],
//       onTap: onIndexChanged,
//     );
//   }
// }







