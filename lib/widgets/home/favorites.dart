import 'package:flutter/material.dart';
import 'package:jw_test_v1/global/colors.dart';
import 'package:jw_test_v1/shared/widgets/card.dart';

class Favorites extends StatelessWidget {
  final List<dynamic> listImagesUrl = [
    'lib/assets/images/seja_feliz.png',
    Colors.green,
    Colors.grey,
    'lib/assets/images/seja_feliz.png',
    Colors.green,
    Colors.grey,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Favoritos',
                  style: TextStyle(color: white, fontSize: 18),
                ),
              ],
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 5),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  JwCard(
                    type: 'short',
                    background: 'lib/assets/images/seja_feliz.png',
                    title: 'Seja feliz para sempre',
                  ),
                  JwCard(
                    type: 'short',
                    background: Colors.green,
                    title: 'Perspicaz',
                  ),
                  JwCard(
                    type: 'short',
                    background: Colors.grey,
                    title: 'Ministério do Reino, fevereiro de 2024',
                  ),
                  JwCard(
                    type: 'short',
                    background: 'lib/assets/images/seja_feliz.png',
                    title: 'Seja feliz para sempre',
                  ),
                  JwCard(
                    type: 'short',
                    background: Colors.green,
                    title: 'Perspicaz',
                  ),
                  JwCard(
                    type: 'short',
                    background: Colors.grey,
                    title: 'Ministério do Reino, fevereiro de 2024',
                  ),
                  JwCard(
                    type: 'short',
                    background: 'lib/assets/images/seja_feliz.png',
                    title: 'Seja feliz para sempre',
                  ),
                  JwCard(
                    type: 'short',
                    background: Colors.green,
                    title: 'Perspicaz',
                  ),
                  JwCard(
                    type: 'short',
                    background: Colors.grey,
                    title: 'Ministério do Reino, fevereiro de 2024',
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
