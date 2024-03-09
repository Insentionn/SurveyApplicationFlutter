import 'package:flutter/material.dart';



class Withdraw extends StatelessWidget {
  const Withdraw({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    // Wrap with Flexible
                    child: Text("Enter Amount to Withraw",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Set the background to transparent
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color.fromARGB(255, 11, 29, 30), Color(0xff051e99)],
          stops: [0.05, 0.95],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.ac_unit, color: Colors.white, size: 30),
                    Text('\$0.00',
                        style: TextStyle(color: Colors.white, fontSize: 24)),
                  ],
                ),
              ),
              Text('You have a balance of:',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              Text(r'$0.0',
                  style: TextStyle(color: Colors.white, fontSize: 40)),
              SizedBox(height: 20),
              Withdraw(),
            ],
          ),
        ),
      ),
    );
  }
}

