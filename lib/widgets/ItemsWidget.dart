import 'package:flutter/material.dart';
import '../globalVariables.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFF10100F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: 1.6,
        crossAxisCount: 1,
        shrinkWrap: true,
        children: [
          for (int i = 1; i < 9; i++)
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 2),
              decoration: BoxDecoration(
                color: Color(0xFFF201F26),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: i.isEven
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.start,
                  ),
                  SizedBox(height: 8),
                  InkWell(
                    onTap: () {
                      _navigateToCategoryPage(context, i);
                    },
                    child: Row(
                      children: [
                        i.isEven
                            ? Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${globalVariables().titles[i - 1]}",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "${globalVariables().desc[i - 1]}",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                  ],
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(0),
                                height: 130,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "images/image$i.png",
                                    height: 140,
                                    width: 120,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                        SizedBox(width: 15),
                        i.isEven
                            ? Container(
                                margin: EdgeInsets.all(10),
                                height: 130,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "images/image$i.png",
                                    height: 140,
                                    width: 120,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            : Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${globalVariables().titles[i - 1]}",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "${globalVariables().desc[i - 1]}",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                  ],
                                ),
                              ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: i.isEven
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.start,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

void _navigateToCategoryPage(BuildContext context, int categoryIndex) {
  switch (categoryIndex) {
    case 1:
      Navigator.pushNamed(context, "prodPage");
      break;
    case 2:
      Navigator.pushNamed(context, "categoryPage2");
      break;
    // Add more cases for each category
  }
}
