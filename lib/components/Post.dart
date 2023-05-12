import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          child: const Icon(
                            Icons.person,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Sérgio",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                                Text("Software engineer",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16)),
                              ],
                            ))
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: const [
                        Icon(
                          Icons.bookmark_add_outlined,
                          size: 24,
                        ),
                        Text("Save",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500))
                      ]),
                    )
                  ],
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                    color: Colors.grey.shade200,
                  ),
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/images/placeholder.png',
                    image:
                        "https://www.crio.do/blog/content/images/2021/03/Python-projects.png",
                  )),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Icon(
                            Icons.favorite_border,
                            size: 24,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("Like",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade600)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Icon(Icons.comment_outlined,
                                size: 24, color: Colors.grey.shade600),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text("Comment",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade600)),
                          )
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Icon(Icons.share_outlined,
                                size: 24, color: Colors.grey.shade600),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text("Share",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade600)),
                          )
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
