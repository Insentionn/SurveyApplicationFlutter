import 'package:flutter/material.dart';

class SurveyCard extends StatelessWidget {
  final String title;
  final String duration;
  final String amount;

  SurveyCard({required this.title, required this.duration, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A6CF8), Color(0xFF4B4E7E)], // Purple gradient
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible( // Wrap with Flexible
                    child: Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                  Row(children: [                  Icon(Icons.star, color: Colors.yellow, size: 18), // Star icon
                  Icon(Icons.star, color: Colors.yellow, size: 18), // Star icon
                  Icon(Icons.star, color: Colors.yellow, size: 18), // Star icon
                  Icon(Icons.star, color: Colors.yellow, size: 18),
                  Icon(Icons.star, color: Colors.grey, size: 18),
                  
                  ],)
 // Star icon
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible( // Wrap with Flexible
                    child: Text('Duration $duration', style: TextStyle(color: Colors.white54)),
                  ),
                  Flexible( // Wrap with Flexible
                    child: Text(amount, style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
