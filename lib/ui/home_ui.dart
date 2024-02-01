import 'package:flutter/material.dart';
import 'package:jw_test_v1/global/colors.dart';
import 'package:jw_test_v1/ui/bible_ui.dart';
import 'package:jw_test_v1/ui/meet_ui.dart';
import 'package:jw_test_v1/ui/personal_study_ui.dart';
import 'package:jw_test_v1/ui/publication_ui.dart';
import 'package:intl/intl.dart';
import 'package:jw_test_v1/widgets/home/daily_text.dart';
import 'package:jw_test_v1/widgets/home/favorites.dart';
import 'package:jw_test_v1/widgets/home/kit_study.dart';
import 'package:jw_test_v1/widgets/home/news.dart';

class HomeUi extends StatefulWidget {
  @override
  _HomeUiState createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  // Receve index of the initial tab selected
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            DailyText(),
            Favorites(),
            KitStudy(),
            News(),
          ],
        ),
      ),
    );
  }
}
