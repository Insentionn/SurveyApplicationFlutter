import 'package:flutter/material.dart';

class CustomerSupportButton extends StatelessWidget {
  final String title;
  final Icon parameter;

  const CustomerSupportButton({
    super.key,
    required this.title,
    required this.parameter,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add your onTap logic here
        print('Container pressed');
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF6A6CF8), Color(0xFF4B4E7E)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 5, bottom: 5, right: 20, left: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.check_circle),
              const SizedBox(
                  width: 10), // Adjust the spacing between the icon and text
              Container(
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align text to the start
                    children: [
                      Text("Gender"),
                      Text("Male"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// About me Page
class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomerSupportButton(
            title: "Helloooo",
            parameter: Icon(Icons.mic),
          ),
          SizedBox(height: 10,),
          CustomerSupportButton(
            title: "Helloooo",
            parameter: Icon(Icons.mic),
          ),
          SizedBox(height: 10,),
          CustomerSupportButton(
            title: "Helloooo",
            parameter: Icon(Icons.mic),
          ),
          SizedBox(height: 10,),
          CustomerSupportButton(
            title: "Helloooo",
            parameter: Icon(Icons.mic),
          ),
          SizedBox(height: 10,),
          CustomerSupportButton(
            title: "Helloooo",
            parameter: Icon(Icons.mic),
          ),
          SizedBox(height: 10,),
          CustomerSupportButton(
            title: "Helloooo",
            parameter: Icon(Icons.mic),
          ),
          SizedBox(height: 10,),
          CustomerSupportButton(
            title: "Helloooo",
            parameter: Icon(Icons.mic),
          ),
          SizedBox(height: 10,),
          CustomerSupportButton(
            title: "Helloooo",
            parameter: Icon(Icons.mic),
          ),
          SizedBox(height: 10,),
          CustomerSupportButton(
            title: "Helloooo",
            parameter: Icon(Icons.mic),
          ),
        ]
        
        ));}
}
