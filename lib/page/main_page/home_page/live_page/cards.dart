import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({
    Key key,
    @required this.cardPics,
    @required this.cardNames,
  }) : super(key: key);

  final List<String> cardPics;
  final List<String> cardNames;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[300], width: 1),
        ),
      ),
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.75,
        crossAxisCount: 5,
        shrinkWrap: true,
        children: cardPics.asMap().keys.map((index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.network(cardPics[index]),
              Text(
                cardNames[index],
                style: TextStyle(fontSize: 12),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
