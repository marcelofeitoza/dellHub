import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  const Community({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Colors.grey.shade300,
          ),
          color: Colors.white,
        ),
        child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text("Python programming",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        // make a sequence of five circles which are one 50% on top of the other
                        Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: const Color(0xff3F3D56),
                              borderRadius: BorderRadius.circular(24.0),
                            )),
                        Transform.translate(
                          offset: const Offset(-16, 0),
                          child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: const Color(0xff585678),
                                borderRadius: BorderRadius.circular(24.0),
                              )),
                        ),
                        Transform.translate(
                          offset: const Offset(-32, 0),
                          child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: const Color(0xff3D3878),
                                borderRadius: BorderRadius.circular(24.0),
                              )),
                        ),
                        Transform.translate(
                          offset: const Offset(-48, 0),
                          child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: const Color(0xFF534CA5),
                                borderRadius: BorderRadius.circular(24.0),
                              )),
                        ),
                      ],
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 8.0),
                    //   child:
                    // )
                    Transform.translate(
                      offset: const Offset(-40, 0),
                      child: Text(
                        "+ 40 colaboradores",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade600,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
