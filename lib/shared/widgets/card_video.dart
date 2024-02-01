import 'package:flutter/material.dart';
import 'package:jw_test_v1/global/colors.dart';

class CardVideo extends StatelessWidget {
  final bool? wasDownloaded;
  final String Function()? subtitle;
  final String title;

  CardVideo({Key? key, this.wasDownloaded, this.subtitle, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 170,
                height: 85,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/images/video_banner.png'),
                    fit: BoxFit.cover,
                  ),
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
              Positioned(
                bottom: 5,
                right: 5,
                child: Icon(
                  Icons.cloud_download_outlined,
                  color: white,
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  padding:
                      EdgeInsets.only(top: 2, bottom: 2, left: 5, right: 5),
                  alignment: Alignment.center,
                  color: grey_100,
                  child: Row(children: [
                    Icon(Icons.arrow_right_outlined, color: white, size: 10),
                    Text(
                      '2:35',
                      style: TextStyle(color: white, fontSize: 10),
                    )
                  ]),
                ),
              ),
            ],
          ),
          Container(
            width: 170,
            padding: EdgeInsets.only(top: 5, bottom: 5),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(color: white, fontSize: 10)),
                Text(subtitle?.call() ?? '',
                    style: TextStyle(color: grey_600, fontSize: 8)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
