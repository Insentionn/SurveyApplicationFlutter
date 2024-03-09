import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
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
          style:TextButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 5,vertical: 0),minimumSize: Size(60, 35),tapTargetSize: MaterialTapTargetSize.shrinkWrap,alignment: Alignment.centerLeft),



          onPressed: () {},
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 13,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.attach_money,
                  size: 13,
                  color: Colors.blue,
                ),
              ),
              SizedBox(width: 5),
              Text(
                '1.5',
                style: TextStyle(color: Colors.white, height: 0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
