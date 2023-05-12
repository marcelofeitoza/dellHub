import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: SvgPicture.asset(
                    'assets/images/dell.svg',
                    height: 128,
                  ),
                ),
              ),
              // SvgPicture.asset(
              //   'assets/dell.svg',
              //   height: 64,
              // ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
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
                                : Colors.grey.shade600,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Challenges",
                            style: TextStyle(
                                color: _selectedIndex == 0
                                    ? const Color(0xff0001fc)
                                    : Colors.grey.shade600,
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
                                : Colors.grey.shade600,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Rewards",
                            style: TextStyle(
                                color: _selectedIndex == 1
                                    ? const Color(0xff0001fc)
                                    : Colors.grey.shade600,
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
                                : Colors.grey.shade600,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Ranking",
                            style: TextStyle(
                                color: _selectedIndex == 2
                                    ? const Color(0xff0001fc)
                                    : Colors.grey.shade600,
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 64.0, bottom: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _selectedIndex == 0
                            ? const Text("Daily tasks",
                                style: TextStyle(fontSize: 16))
                            : _selectedIndex == 1
                                ? const Text("Choose benefit",
                                    style: TextStyle(fontSize: 16))
                                : const Text("Ranking",
                                    style: TextStyle(fontSize: 16)),
                        Row(children: const [
                          Icon(Icons.currency_bitcoin_outlined),
                          Text("My points:", style: TextStyle(fontSize: 14)),
                          Padding(
                            padding: EdgeInsets.only(left: 4.0),
                            child: Text("450",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                          ),
                        ])
                      ],
                    ),
                  ),
                  _selectedIndex == 0
                      ? Column(
                          children: const [
                            Challenge(
                              icon: Icon(Icons.post_add_outlined,
                                  color: Colors.white, size: 64),
                              task: "Create new publication",
                              value: 10,
                            ),
                            Challenge(
                              icon: Icon(Icons.star,
                                  color: Colors.white, size: 64),
                              task: "Like 5 posts",
                              value: 20,
                            ),
                            Challenge(
                              icon: Icon(Icons.receipt,
                                  color: Colors.white, size: 64),
                              task: "Submit a new project",
                              value: 50,
                            )
                          ],
                        )
                      : _selectedIndex == 1
                          ? Column(
                              children: const [
                                Benefit(
                                    company: "Lojas Americanas",
                                    color: Colors.red,
                                    value: 100),
                                Benefit(
                                    company: "Uber",
                                    color: Colors.black,
                                    value: 50),
                                Benefit(
                                    company: "Parking Space",
                                    color: Colors.blue,
                                    value: 50),
                              ],
                            )
                          : Column(children: const [Placeholder()]),
                  // Column(
                  //   children: [
                  //     if (_selectedIndex == 0)
                  //       {

                  //       }
                  //     else if (_selectedIndex == 1)
                  //       {
                  //
                  //     else
                  //       for (int i = 0; i < 5; i++) const Community(),
                  //   ],
                  // )
                ],
              )
            ]));
  }
}

class Challenge extends StatelessWidget {
  const Challenge(
      {super.key, required this.icon, required this.task, required this.value});

  final Icon icon;
  final String task;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: const Color(0xff4285F4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              icon,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 8.0),
                  child: Text(task,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(children: [
                  const Icon(Icons.currency_bitcoin_outlined,
                      color: Colors.white, size: 18),
                  Text(value.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      )),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Benefit extends StatelessWidget {
  const Benefit(
      {super.key,
      required this.company,
      required this.color,
      required this.value});

  final String company;
  final Color color;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
              border: Border.fromBorderSide(
                  BorderSide(color: Color.fromARGB(255, 218, 237, 255))),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(128, 218, 237, 255),
                  blurRadius: 8.0,
                  spreadRadius: 0.0,
                  offset: Offset(0.0, 4.0),
                )
              ]),
          child: Column(
            children: [
              Container(
                height: 64,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0)),
                    color: color),
                child: Center(
                  child: Text(company,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 24.0, horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.currency_bitcoin_outlined),
                            Text(
                              value.toString(),
                              style: const TextStyle(fontSize: 16),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        Text(
                          "Gift Card de R\$${value.toString()}",
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ],
                    )),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xff4285F4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                      child: const Text('Redeem',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
