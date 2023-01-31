import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 20/28,
      shrinkWrap: true,
      children: [
        for(int i=1; i<11;i++)
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              InkWell(
                onTap: (){},
                child: Container(
                  child: Image.asset(
                      'assets/alloys.jpg',
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product name",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(5, 2, 10, 5),
                child: Text(
                    "Write product description here",
                    style: TextStyle(
                      fontSize: 12
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rs 10000",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Icon(Icons.shopping_cart_outlined,)
                  ],
                ),
              )
            ],
          ),

        )
      ],
    );

  }
}
