import 'package:dellhub/components/Community.dart';
import 'package:dellhub/components/Favorite.dart';
import 'package:dellhub/components/Post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({Key? key}) : super(key: key);

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  int _selectedIndex = 0;

  void Function() _onPressed(int index) {
    return () => setState(() => _selectedIndex = index);
  }

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
              SvgPicture.asset(
                "assets/dell.svg",
                // height: 64,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "Dell Rewards",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
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
                            backgroundColor:
                                const Color.fromARGB(255, 218, 237, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                          child: const Icon(
                            Icons.list,
                            size: 32,
                            color: Color(0xFF0001FC),
                          )),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text("Trend Topics",
                            style: TextStyle(
                                color: Color(0xff0001fc),
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
                          child: const Icon(
                            Icons.star_border,
                            size: 32,
                            color: Color(0xFF0001FC),
                          )),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text("Favorites",
                            style: TextStyle(
                                color: Color(0xff0001fc),
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
                            backgroundColor:
                                const Color.fromARGB(255, 218, 237, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                          child: const Icon(
                            Icons.people_outline,
                            size: 32,
                            color: Color(0xFF0001FC),
                          )),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text("Community",
                            style: TextStyle(
                                color: Color(0xff0001fc),
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
