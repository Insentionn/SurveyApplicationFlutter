import '../Components/SurveyCard.dart';
import 'package:flutter/material.dart';
import '../Components/Header.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key});

  Widget build(BuildContext context) {
    // Sample data for survey cards
    List<Map<String, String>> surveyData = [
      {
        'title':
            'Intro Survey dfsf sdfs dfsdfsd fsdfs fsdf sdfsd sdfsdf sdfsdf sdfsdf sdfsdf sdfsdfsd',
        'duration': '3 mins',
        'amount': '\$1.00'
      },
      {'title': 'Profile Survey', 'duration': '5 mins', 'amount': '\$0.50'},
      {'title': 'Profile Survey', 'duration': '5 mins', 'amount': '\$0.50'}
      // Add more survey data as needed
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 11, 29, 30), Color(0xff051e99)],
            stops: [0.05, 0.95],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Header(),
              Text(
                'Surveys for you',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: surveyData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SurveyCard(
                      title: surveyData[index]['title']!,
                      duration: surveyData[index]['duration']!,
                      amount: surveyData[index]['amount']!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
