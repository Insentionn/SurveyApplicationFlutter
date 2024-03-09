import 'package:flutter/material.dart';

import '../States/Indexofcategory.dart';
// State
import '../Components/ProfileHeader.dart';
// Header

// Summary Page:
import 'Summary.dart';
// Bonus Page
import './MyBonus.dart';

//About me 

import './Aboutme.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    var listofpages = [const SurveyCategory(), const MyBonus(), const AboutMe()];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 11, 29, 30), Color(0xff051e99)],
            stops: [0.05, 0.95],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const ProfileHeader(),
                ValueListenableBuilder<int>(
                  valueListenable: globalInt,
                  builder: (context, value, child) {
                    // return Text('Global Int: $value');
                    return listofpages[value];
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
























