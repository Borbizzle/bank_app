import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0XFF008686), Color(0XFF00838F)]),
            ),
            child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30,),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          Text("Available Balance",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Icon(Icons.notifications, color: Colors.white,
                          ),
                        ]
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                              color: const Color(0XFF008686),
                              border: Border.all(
                                width: 1.5,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(40.0)
                          ),
                          padding: const EdgeInsets.all(5),
                          child: const CircleAvatar(
                            backgroundImage:NetworkImage(
                                "https://images.pexels.com/photos/2167673/pexels-photo-2167673.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Jennifer Johnson",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,),
                            ),
                            const SizedBox(height: 10,),
                            Row(children: [
                              const Icon(Icons.camera_front, color: Colors.white,),
                              const SizedBox(width: 10,),
                              RichText(text: const TextSpan(
                                text: "\$2753",
                              ),)

                            ],)
                          ],
                        )
                      ],)
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}


