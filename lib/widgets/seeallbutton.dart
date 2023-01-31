import 'package:flutter/material.dart';

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 70,
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
                "See all",
                style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            //Icon(Icons.add_circle_outline_sharp, color: Colors.black,),
          ],
        ),
      ),
    );
  }
}