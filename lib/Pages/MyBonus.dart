import 'package:flutter/material.dart';


class MultiplierPrice extends StatelessWidget {
  final String title;

  const MultiplierPrice({
    super.key,
    required this.title,
  });

  Widget build(BuildContext context) {
    return Opacity(
        opacity: 0.5,
        child: Center(
          child: Container(
            // padding: EdgeInsets.symmetric(horizontal: 0),
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              // gradient: const LinearGradient(
              //   colors: [Colors.grey, Colors.black],
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              // ),
              color: Color.fromARGB(255, 58, 58, 58),
              borderRadius: BorderRadius.circular(15),
            ),

            child: TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  minimumSize: Size(60, 35),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.center),
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Colors.white, height: 0),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class Multliplier extends StatelessWidget {
  final String title;

  const Multliplier({
    super.key,
    required this.title,
  });

  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 0),
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),

        // child: TextButton(
        //     onPressed: () => Navigator.pop(context),
        //     child: const Text("0"),
        //     style: TextButton.styleFrom(
        //         padding: EdgeInsets.zero,
        //         minimumSize: Size(50, 30),
        //         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //         alignment: Alignment.centerLeft)),

        child: TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              minimumSize: Size(60, 35),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              alignment: Alignment.center),
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.white, height: 0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomerSupportButton extends StatelessWidget {
  const CustomerSupportButton({
    super.key,
  });
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add your onTap logic here
        print('Container pressed');
      },
      child: Container(
        // margin: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF6A6CF8), Color(0xFF4B4E7E)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 15, bottom: 15, right: 20, left: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "MyBonus: 0x Multiplier!",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "You've Earned 1.52. Earn 3.48 more to earn a 1.1x bonus on Each Survey",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text("🎁", style: TextStyle(fontSize: 48)),
            ],
          ),
        ),
      ),
    );
  }
}

class MutliplierOptions extends StatelessWidget {
  const MutliplierOptions({
    super.key,
  });
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add your onTap logic here
        print('Container pressed');
      },
      child: Container(
        // margin: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF6A6CF8), Color(0xFF4B4E7E)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 20, bottom: 15, right: 25, left: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Cash-Out tier",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Earnings multiplier:",
                  style: TextStyle(color: Colors.white),
                )
              ]),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                MultiplierPrice(title: r"500$"),
                Multliplier(title: "1.8x")
              ]),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Color.fromARGB(255, 182, 182, 182),
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                MultiplierPrice(title: r"100$"),
                Multliplier(title: "1.5x")
              ]),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Color.fromARGB(255, 182, 182, 182),
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                MultiplierPrice(title: r"50$"),
                Multliplier(title: "1.4x")
              ]),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Color.fromARGB(255, 182, 182, 182),
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                MultiplierPrice(title: r"25$"),
                Multliplier(title: "1.3x")
              ]),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Color.fromARGB(255, 182, 182, 182),
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                MultiplierPrice(title: r"10$"),
                Multliplier(title: "1.2x")
              ]),
              SizedBox(
                height: 10,
              ),
               Divider(
                color: Color.fromARGB(255, 182, 182, 182),
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                MultiplierPrice(title: r"5$"),
                Multliplier(title: "1.1x")
              ]),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyBonus extends StatelessWidget {
  const MyBonus({super.key});

  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomerSupportButton(),
          SizedBox(
            height: 20,
          ),
          MutliplierOptions()
        ]));
  }
}
