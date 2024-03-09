import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SurveyCard extends StatefulWidget {
  final String title;
  final String duration;
  final String amount;

  SurveyCard(
      {required this.title, required this.duration, required this.amount});

  @override
  _SurveyCardState createState() => _SurveyCardState();
}

class _SurveyCardState extends State<SurveyCard> {
  bool isTitleLong = false;
  String titleToDisplay = "";
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    titleToDisplay = widget.title;
    if (widget.title.length >= 25) {
      // Here
      isTitleLong = true;
      titleToDisplay = widget.title.substring(0, 25) + "...";
      //  Here
    }
  }

  void toggleExpandedState() {
    setState(() {
      if (!isExpanded) {
        // If not expanded, show full title
        titleToDisplay = widget.title;
      } else {
        // If expanded, show truncated title
        titleToDisplay = widget.title.substring(0, 25) + "...";
        // Here
      }
      // Toggle the state
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A6CF8), Color(0xFF4B4E7E)],
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
                crossAxisAlignment: CrossAxisAlignment.start,
                //          <===========  Remove this line to Return the stars to where they were
                children: [
                  Flexible(
                    child: Text(
                      titleToDisplay,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 3.0), // Adjust the value as needed
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 18),
                        Icon(Icons.star, color: Colors.yellow, size: 18),
                        Icon(Icons.star, color: Colors.yellow, size: 18),
                        Icon(Icons.star, color: Colors.yellow, size: 18),
                        Icon(Icons.star, color: Colors.grey, size: 18),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'Duration ${widget.duration}',
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      widget.amount,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              // Display IconButton only when the title is long
              if (isTitleLong)
                IconButton(
                  icon: isExpanded
                      ? Icon(Icons.arrow_drop_up)
                      : Icon(Icons.arrow_drop_down),
                  onPressed: toggleExpandedState,
                  iconSize: 30,
                ),
            ],
          ),
        ),
      ),
    );
  }
}


// The Previous code of the stars without the padding :

// Row(
                    
//                     children: [
//                       Icon(Icons.star, color: Colors.yellow, size: 18),
//                       Icon(Icons.star, color: Colors.yellow, size: 18),
//                       Icon(Icons.star, color: Colors.yellow, size: 18),
//                       Icon(Icons.star, color: Colors.yellow, size: 18),
//                       Icon(Icons.star, color: Colors.grey, size: 18),
//                     ],
//                   )