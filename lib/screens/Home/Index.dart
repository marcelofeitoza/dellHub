import 'package:dellhub/components/Community.dart';
import 'package:dellhub/components/Favorite.dart';
import 'package:dellhub/components/Post.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void Function() _onPressed(int index) {
    return () => setState(() => _selectedIndex = index);
  }

  final String dellSvg = 'assets/images/dell.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFAFAFA),
        body: ListView(
            padding:
                // const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
                const EdgeInsets.only(
                    right: 16.0, left: 16.0, top: 48.0, bottom: 16.0),
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Dell",
                          style: TextStyle(
                            color: Colors.blue.shade800,
                            fontSize: 48,
                            fontWeight: FontWeight.w600,
                          )),
                      IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.grey.shade700,
                        ),
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 48.0),
                child: Container(
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xFF4285F4),
                  ),
                  child: Row(
                    children: const [
                      Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.lightbulb,
                            size: 64,
                            color: Colors.white,
                          )),
                      Expanded(
                          child: Text(
                              "You have 3 new projects that match with your profile!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: true)),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.arrow_circle_right,
                          color: Color(0xFF0252ef),
                          size: 32,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                          onPressed: _onPressed(0),
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(64, 64),
                            shadowColor: Colors.transparent,
                            foregroundColor: Colors.transparent,
                            backgroundColor: _selectedIndex == 0
                                ? const Color.fromARGB(255, 218, 237, 255)
                                : const Color.fromARGB(128, 218, 237, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                          child: Icon(
                            Icons.list,
                            size: 32,
                            color: _selectedIndex == 0
                                ? const Color(0xFF0001FC)
                                : Colors.grey.shade500,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Trend Topics",
                            style: TextStyle(
                                color: _selectedIndex == 0
                                    ? const Color(0xff0001fc)
                                    : Colors.grey.shade500,
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                          onPressed: _onPressed(1),
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(64, 64),
                            shadowColor: Colors.transparent,
                            foregroundColor: Colors.transparent,
                            backgroundColor:
                                const Color.fromARGB(255, 218, 237, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                          child: Icon(
                            Icons.star_border,
                            size: 32,
                            color: _selectedIndex == 1
                                ? const Color(0xFF0001FC)
                                : Colors.grey.shade500,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Favorites",
                            style: TextStyle(
                                color: _selectedIndex == 1
                                    ? const Color(0xff0001fc)
                                    : Colors.grey.shade500,
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                          onPressed: _onPressed(2),
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(64, 64),
                            shadowColor: Colors.transparent,
                            foregroundColor: Colors.transparent,
                            backgroundColor: _selectedIndex == 2
                                ? const Color.fromARGB(255, 218, 237, 255)
                                : const Color.fromARGB(128, 218, 237, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                          child: Icon(
                            Icons.people_outline,
                            size: 32,
                            color: _selectedIndex == 2
                                ? const Color(0xFF0001FC)
                                : Colors.grey.shade500,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Community",
                            style: TextStyle(
                                color: _selectedIndex == 2
                                    ? const Color(0xff0001fc)
                                    : Colors.grey.shade500,
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 48.0, bottom: 36.0),
                      child: Text(
                          _selectedIndex == 0
                              ? "Trend Topics"
                              : _selectedIndex == 1
                                  ? "Favorites"
                                  : "Community",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w600))),
                  Column(
                    children: [
                      if (_selectedIndex == 0)
                        for (int i = 0; i < 5; i++) const Post(),
                      if (_selectedIndex == 1)
                        for (int i = 0; i < 5; i++) const Favorite(),
                      if (_selectedIndex == 2)
                        for (int i = 0; i < 5; i++) const Community(),
                    ],
                  )
                ],
              )
            ]));
  }
}
