import 'package:flutter/material.dart';
import 'package:jw_test_v1/global/colors.dart';
import 'package:jw_test_v1/ui/bible_ui.dart';
import 'package:jw_test_v1/ui/home_ui.dart';
import 'package:jw_test_v1/ui/meet_ui.dart';
import 'package:jw_test_v1/ui/personal_study_ui.dart';
import 'package:jw_test_v1/ui/publication_ui.dart';

class RouterOutlet extends StatefulWidget {
  const RouterOutlet({Key? key}) : super(key: key);

  @override
  _RouterOutletState createState() => _RouterOutletState();
}

class _RouterOutletState extends State<RouterOutlet> {
  int currentTab = 0;

  final List<Widget> screens = [
    HomeUi(),
    BibleUi(),
    PublicationUi(),
    MeetUi(),
    PersonalStudyUi(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = HomeUi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: grey_400,
        title: Text(
          'Início',
          style: TextStyle(
            color: white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh_outlined, size: 25),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings_outlined, size: 25),
            ),
          ),
        ],
        actionsIconTheme: IconThemeData(color: purple),
        elevation: 0,
        centerTitle: true,
      ),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        color: grey_400,
        height: 75,
        shape: CircularNotchedRectangle(),
        notchMargin: 7,
        padding: EdgeInsets.all(0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                      height: 75,
                      minWidth: 65,
                      onPressed: () {
                        setState(() {
                          currentScreen = HomeUi();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.home_outlined,
                            color: currentTab == 0 ? purple : grey_600,
                          ),
                          Text(
                            'Início',
                            style: TextStyle(
                                color: currentTab == 0 ? purple : grey_600,
                                fontSize: 11),
                          ),
                        ],
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                      height: 75,
                      minWidth: 65,
                      onPressed: () {
                        setState(() {
                          currentScreen = BibleUi();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.book_outlined,
                            color: currentTab == 1 ? purple : grey_600,
                          ),
                          Text(
                            'Bíblia',
                            style: TextStyle(
                                color: currentTab == 1 ? purple : grey_600,
                                fontSize: 11),
                          ),
                        ],
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                      height: 75,
                      minWidth: 65,
                      onPressed: () {
                        setState(() {
                          currentScreen = PublicationUi();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.library_music_outlined,
                            color: currentTab == 2 ? purple : grey_600,
                          ),
                          Text(
                            'Biblioteca',
                            style: TextStyle(
                                color: currentTab == 2 ? purple : grey_600,
                                fontSize: 11),
                          ),
                        ],
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                      height: 75,
                      minWidth: 65,
                      onPressed: () {
                        setState(() {
                          currentScreen = MeetUi();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.smart_display_outlined,
                            color: currentTab == 3 ? purple : grey_600,
                          ),
                          Text(
                            'Início',
                            style: TextStyle(
                                color: currentTab == 3 ? purple : grey_600,
                                fontSize: 11),
                          ),
                        ],
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                      height: 75,
                      minWidth: 65,
                      onPressed: () {
                        setState(() {
                          currentScreen = PersonalStudyUi();
                          currentTab = 4;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.diamond_outlined,
                            color: currentTab == 4 ? purple : grey_600,
                          ),
                          Text(
                            'Estudo pessoal',
                            style: TextStyle(
                                color: currentTab == 4 ? purple : grey_600,
                                fontSize: 11),
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
