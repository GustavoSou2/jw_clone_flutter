import 'package:flutter/material.dart';
import 'package:jw_test_v1/global/colors.dart';

class PublicationUi extends StatefulWidget {
  const PublicationUi({Key? key}) : super(key: key);

  @override
  _PublicationUiState createState() => _PublicationUiState();
}

class _PublicationUiState extends State<PublicationUi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: black,
        appBar: AppBar(
          backgroundColor: grey_100,
          title: TabBar(
            labelColor: purple,
            unselectedLabelColor: grey_500,
            padding: EdgeInsets.all(0),
            indicatorColor: purple,
            tabs: [
              Tab(text: 'Publicações'),
              Tab(text: 'Vídeos'),
              Tab(text: 'Áudios'),
              Tab(text: 'Baixadso'),
            ],
          ),
        ),
        body: TabBarView(
          children: [],
        ),
      ),
    );
  }
}
