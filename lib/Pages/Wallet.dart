import 'package:flutter/material.dart';
import '../Components/Header.dart';
class Withdraw extends StatefulWidget {
  const Withdraw({Key? key}) : super(key: key);

  @override
  _WithdrawState createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
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
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter The Withdrawal Amount",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 10),
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Enter amount',
                  hintStyle: TextStyle(color: Colors.white70),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        // Perform withdrawal logic here
                        // Access entered amount using amountController.text
                      },
                      child: Text('Withdraw')),
                ],
              ),SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Flexible(
                    child: Text(
                  "It may Take up to 2 days for the transaction To be completed, if you Have any questions Please contact us.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ))
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              // Here
              Column(
                children: [
              Text(
                'You have a balance of:',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Text(
                r'$0.0',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              SizedBox(height: 20),
              Withdraw(),

              ],),
            ],
          ),
        ),
      ),
    );
  }
}
