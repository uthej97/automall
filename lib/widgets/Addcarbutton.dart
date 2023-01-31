import 'package:flutter/material.dart';

class AddCarButton extends StatelessWidget {
  const AddCarButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 98,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        color: Colors.cyan[800],
        onPressed: () {},
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: Text(
                "Add car",
                style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            Icon(Icons.add_circle_outline_sharp, color: Colors.black,),
          ],
        ),
      ),
    );
  }
}