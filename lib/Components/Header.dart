import 'package:flutter/material.dart';
import './BalanceButton.dart';


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.ac_unit, color: Colors.white, size: 45),
                    Button(),
                  ],
                ),
              );
  }
}