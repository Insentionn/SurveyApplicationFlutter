
import 'package:flutter/material.dart';

class CustomerSupportButton extends StatelessWidget {
  final String title;
  final Icon icon;

  const CustomerSupportButton({
    super.key,
    required this.title,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add your onTap logic here
        print('Container pressed');
      },
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
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
              IconButton(
                onPressed: () => {},
                icon: icon,
                padding: EdgeInsets.zero,
              ),
              Text(title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 15)),
            ],
          ),
        ),
      ),
    );
  }
}

class ReferalCode extends StatefulWidget {
  const ReferalCode({Key? key}) : super(key: key);

  @override
  _ReferalCodeState createState() => _ReferalCodeState();
}

class _ReferalCodeState extends State<ReferalCode> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTapDown: (_) {
            setState(() {
              _isPressed = true;
            });
          },
          onTapUp: (_) {
            setState(() {
              _isPressed = false;
            });
          },
          onTapCancel: () {
            setState(() {
              _isPressed = false;
            });
          },
          child: Opacity(
            opacity: _isPressed ? 0.5 : 1.0,
            child: Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFF4B4E7E), // Set border color
                  width: 1.0, // Set border width
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Padding(
                padding:
                    EdgeInsets.only(top: 15, bottom: 15, right: 15, left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Enter Referral Code",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class ReferFriend extends StatelessWidget {
  const ReferFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add your onTap logic here
        print('Container pressed');
      },
      child: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF6A6CF8), Color(0xFF4B4E7E)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20, right: 15, left: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Refer Friends",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            ],
          ),
        ),
      ),
    );
  }
}

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF6A6CF8), Color(0xFF4B4E7E)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20, right: 15, left: 20),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Distribute space evenly
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                // flex: 1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("1",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white)),
                      Text("Daily Polls",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white))
                    ]),
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                // flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("4",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white)),
                    Text("Complete surveys",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                // flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(r"$1.52",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white)),
                    Text("Lifetime Earnings",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white)
                        // style:TextStyle(backgroundColor: Colors.white),
                        )
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
            ],
          )),
    );
  }
}

class SurveyCategory extends StatefulWidget {
  const SurveyCategory({Key? key}) : super(key: key);

  @override
  _SurveyCategoryState createState() => _SurveyCategoryState();
}

class _SurveyCategoryState extends State<SurveyCategory> {
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Summary(),
            SizedBox(
              height: 15,
            ),
            ReferFriend(),
            SizedBox(
              height: 15,
            ),
            ReferalCode(),
            SizedBox(
              height: 15,
            ),
            Text("Customer Support", style: TextStyle(color: Colors.white)),
            Text(
              "Experiencing issues? Reach out to us and we'll get Back to you in 1-2 days.",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            CustomerSupportButton(
                title: "Contact Us",
                icon: Icon(
                  Icons.headset_mic,
                  color: Colors.white,
                )),
            SizedBox(
              height: 10,
            ),
            CustomerSupportButton(
                title: "Privacy Policy",
                icon: Icon(
                  Icons.security,
                  color: Colors.white,
                )),
            SizedBox(
              height: 10,
            ),
            CustomerSupportButton(
                title: "Delete Account",
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                )),
            SizedBox(
              height: 10,
            ),
            CustomerSupportButton(
                title: "Logout",
                icon: Icon(
                  Icons.logout,
                  color: Colors.white,
                )),
            SizedBox(
              height: 10,
            )
          ],
        ));
  }
}



