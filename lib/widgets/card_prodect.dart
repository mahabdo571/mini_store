import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardProdect extends StatelessWidget {
  const CardProdect({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 130,
          width: 220,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 40,
                color: Colors.grey.withOpacity(.2),
                spreadRadius: 1,
                offset: Offset(5, 5),
              ),
            ],
          ),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'handbag',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'$233',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Icon(FontAwesomeIcons.solidHeart, color: Colors.red),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 32,
          bottom: 80,
          child: Image.network(
            'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
            height: 100,
          ),
        ),
      ],
    );
  }
}
