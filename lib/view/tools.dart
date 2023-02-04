import 'package:flutter/material.dart';
import 'package:toolsapp/view/model/menudata.dart';

class ToolsView extends StatefulWidget {
  const ToolsView({Key? key}) : super(key: key);

  @override
  State<ToolsView> createState() => _ToolsViewState();
}

class _ToolsViewState extends State<ToolsView> {
  List<MenuData> menuData = [
    MenuData(
        menutext: "Mood jurnal",
        icon: Icons.track_changes,
        color: const Color(0xff8f98ff)),
    MenuData(
      menutext: "Mood booster",
      icon: Icons.add,
      color: const Color(0xffff7648),
    ),
    MenuData(
      menutext: "Positive activities",
      icon: Icons.add,
      color: const Color(0xff4dc591),
    ),
    MenuData(
      menutext: "Trigger yourplan",
      icon: Icons.add,
      color: const Color(0xff65a4da),
    ),
    MenuData(
      menutext: "Goal trainer",
      icon: Icons.add,
      color: const Color(0xffd3d3d3),
    ),
    MenuData(
      menutext: "Trigger yourplan",
      icon: Icons.add,
      color: const Color(0xff65a4da),
    ),
    MenuData(
      menutext: "Trigger yourplan",
      icon: Icons.add,
      color: const Color(0xff65a4da),
    ),
    MenuData(
      menutext: "Trigger yourplan",
      icon: Icons.add,
      color: const Color(0xff65a4da),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    int dataBottomNavigationbar = 0;
    void movenavbarbottom(int index) {
      setState(() {
        dataBottomNavigationbar = index;
      });
    }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: dataBottomNavigationbar,
        selectedItemColor: const Color(0xffff575a),
        unselectedItemColor: const Color(0xffc9c9c9),
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Session',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Tools',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: movenavbarbottom,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "  Tools",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      decorationStyle: TextDecorationStyle.wavy),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: List.generate(menuData.length, (index) {
                    return Container(
                      height: 150,
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: menuData[index].color,
                        child: Stack(
                          children: [
                            const Positioned(
                              right: 40,
                              bottom: 40,
                              child: Icon(
                                Icons.developer_board,
                                color: Color(0xffffffff),
                                size: 50.0,
                              ),
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 60,
                                ),
                                Row(children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    menuData[index].menutext.toString(),
                                    style: const TextStyle(
                                      fontSize: 27,
                                      color: Colors.white,
                                    ),
                                  ),
                                ]),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
