import 'package:flutter/material.dart';
import 'package:slicing_ui_community/screen_page/page_camera.dart';
import 'package:slicing_ui_community/screen_page/page_maps.dart';
import 'package:slicing_ui_community/screen_page/page_profil_user.dart';
import 'package:slicing_ui_community/screen_page/page_home.dart';
import 'package:slicing_ui_community/screen_page/page_mycourse.dart';

class PageBottomNavigationBar extends StatefulWidget {
  const PageBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<PageBottomNavigationBar> createState() => _PageBottomNavigationBarState();
}

class _PageBottomNavigationBarState extends State<PageBottomNavigationBar> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: [
          PageHome(),
          PageMyCourses(),
          AccessCamera(),
          MapsFlutter(),
          PageHome(),
          PageHome(),
          //PageProfileUser(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          controller: tabController,
          labelColor: Colors.grey,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Icon(Icons.article),
                    ),
                    Text("List Berita"),
                  ],
                ),
              ),
            ),
            Tab(
              child: SingleChildScrollView(// Custom layout for Tab
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),  // Control spacing between icon and text
                      child: Icon(Icons.play_arrow),
                    ),
                    Text("My Course"),
                  ],
                ),
              ),
            ),
            Tab(
              child: SingleChildScrollView(// Custom layout for Tab
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),  // Control spacing between icon and text
                      child: Icon(Icons.camera_alt),
                    ),
                    Text("Camera"),
                  ],
                ),
              ),
            ),
            Tab(
              child: SingleChildScrollView(// Custom layout for Tab
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),  // Control spacing between icon and text
                      child: Icon(Icons.map_sharp),
                    ),
                    Text("Maps"),
                  ],
                ),
              ),
            ),
            Tab(
              child: SingleChildScrollView(// Custom layout for Tab
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),  // Control spacing between icon and text
                      child: Icon(Icons.book),
                    ),
                    Text("Blog"),
                  ],
                ),
              ),
            ),
            Tab(
              child: SingleChildScrollView(// Custom layout for Tab
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),  // Control spacing between icon and text
                      child: Icon(Icons.person),
                    ),
                    Text("Profil User"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}