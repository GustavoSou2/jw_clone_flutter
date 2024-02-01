import 'package:flutter/material.dart';
import 'package:jw_test_v1/global/colors.dart';
import 'package:jw_test_v1/shared/widgets/card.dart';
import 'package:jw_test_v1/shared/widgets/card_video.dart';

class News extends StatelessWidget {
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
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.all(10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Novidades',
                  style: TextStyle(color: white, fontSize: 18),
                ),
                Text(
                  'Português (Brasil)',
                  style: TextStyle(color: purple, fontSize: 12),
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
                    type: 'long',
                    background: 'lib/assets/images/bible.png',
                    title:
                        'Tradução do Novo Mundo da Bíblia Sagrada (Edição de Estudo)',
                    subtitle: '',
                    formatSubtitle: () {
                      DateTime dateCreatedAt = DateTime(2024, 01, 25);
                      DateTime dateNow = DateTime.now();
                      Duration diffBetweenDatesInDays =
                          dateNow.difference(dateCreatedAt);

                      return 'Português (Brasil) - ${diffBetweenDatesInDays.inDays} dias atrás';
                    },
                  ),
                  JwCard(
                    type: 'long',
                    background: 'lib/assets/images/bible.png',
                    title:
                        'Tradução do Novo Mundo da Bíblia Sagrada (Edição de Estudo)',
                    subtitle: '',
                    formatSubtitle: () {
                      DateTime dateCreatedAt = DateTime(2024, 01, 25);
                      DateTime dateNow = DateTime.now();
                      Duration diffBetweenDatesInDays =
                          dateNow.difference(dateCreatedAt);

                      return 'Português (Brasil) - ${diffBetweenDatesInDays.inDays} dias atrás';
                    },
                  ),
                  JwCard(
                    type: 'long',
                    background: 'lib/assets/images/bible.png',
                    title:
                        'Tradução do Novo Mundo da Bíblia Sagrada (Edição de Estudo)',
                    subtitle: '',
                    formatSubtitle: () {
                      DateTime dateCreatedAt = DateTime(2024, 01, 25);
                      DateTime dateNow = DateTime.now();
                      Duration diffBetweenDatesInDays =
                          dateNow.difference(dateCreatedAt);

                      return 'Português (Brasil) - ${diffBetweenDatesInDays.inDays} dias atrás';
                    },
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 5),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardVideo(
                    title: "Relatório da Filial: Nigéria e Camarões",
                    subtitle: () {
                      DateTime dateCreatedAt = DateTime(2024, 01, 25);
                      DateTime dateNow = DateTime.now();
                      Duration diffBetweenDatesInDays =
                          dateNow.difference(dateCreatedAt);

                      return 'Português (Brasil) - ${diffBetweenDatesInDays.inDays} dias atrás';
                    },
                  ),
                  CardVideo(
                    title: "Relatório da Filial: Nigéria e Camarões",
                    subtitle: () {
                      DateTime dateCreatedAt = DateTime(2024, 01, 25);
                      DateTime dateNow = DateTime.now();
                      Duration diffBetweenDatesInDays =
                          dateNow.difference(dateCreatedAt);

                      return 'Português (Brasil) - ${diffBetweenDatesInDays.inDays} dias atrás';
                    },
                  ),
                  CardVideo(
                    title: "Relatório da Filial: Nigéria e Camarões",
                    subtitle: () {
                      DateTime dateCreatedAt = DateTime(2024, 01, 25);
                      DateTime dateNow = DateTime.now();
                      Duration diffBetweenDatesInDays =
                          dateNow.difference(dateCreatedAt);

                      return 'Português (Brasil) - ${diffBetweenDatesInDays.inDays} dias atrás';
                    },
                  ),
                  CardVideo(
                    title: "Relatório da Filial: Nigéria e Camarões",
                    subtitle: () {
                      DateTime dateCreatedAt = DateTime(2024, 01, 25);
                      DateTime dateNow = DateTime.now();
                      Duration diffBetweenDatesInDays =
                          dateNow.difference(dateCreatedAt);

                      return 'Português (Brasil) - ${diffBetweenDatesInDays.inDays} dias atrás';
                    },
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
