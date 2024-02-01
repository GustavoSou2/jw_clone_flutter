import 'package:flutter/material.dart';
import 'package:jw_test_v1/global/colors.dart';

class JwCard extends StatelessWidget {
  final String type;

  final String title;

  final dynamic background;

  final String? subtitle;

  final String Function()? formatSubtitle;

  final String? createdAt;

  JwCard({
    required this.type,
    required this.background,
    required this.title,
    this.createdAt,
    this.subtitle,
    this.formatSubtitle,
  });

  Widget _handlerBackground(dynamic background) {
    if (background is String && background.startsWith('lib'))
      return Container(
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(background),
            fit: BoxFit.cover,
          ),
        ),
      );

    return Container(
      width: 85,
      height: 85,
      color: background,
    );
  }

  Container longCard = Container(
      child: Text(
    'CHIFRUDO',
    style: TextStyle(fontSize: 22, color: white),
  ));

  @override
  Widget build(BuildContext context) {
    return type == 'short'
        ? Container(
            margin: EdgeInsets.only(right: 10),
            child: Column(
              children: [
                Stack(
                  children: [
                    // Imagem de fundo
                    _handlerBackground(background),
                    // Gradiente linear sobre a imagem
                    Container(
                      width: 85,
                      height: 85,
                      padding: EdgeInsets.all(0),
                      margin: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: purple,
                        gradient: LinearGradient(
                          end: Alignment.topCenter,
                          begin: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.3),
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.more_horiz_outlined,
                                color: white,
                                size: 25,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 85,
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    formatSubtitle?.call() ?? title,
                    style: TextStyle(
                        fontSize: 10,
                        color: white,
                        overflow: TextOverflow.clip,
                        height: 0),
                  ),
                  margin: EdgeInsets.only(top: 5),
                ),
              ],
            ),
          )
        : Container(
            margin: EdgeInsets.only(right: 10),
            child: Row(
              children: [
                _handlerBackground(background),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 85,
                          width: 275,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(color: grey_100),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 210,
                                child: Text(title,
                                    style:
                                        TextStyle(fontSize: 13, color: white)),
                              ),
                              Text(
                                formatSubtitle?.call() ?? title,
                                style: TextStyle(
                                  fontSize: 11,
                                  color: grey_600,
                                  overflow: TextOverflow.clip,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 5,
                          child: Icon(
                            Icons.more_horiz_outlined,
                            color: white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
