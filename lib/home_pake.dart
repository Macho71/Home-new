import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ui/model/home_profil.dart';
import 'package:ui/service/home_service.dart';
import 'package:ui/view/bag.dart';
import 'package:ui/view/home.dart';
import 'package:ui/view/person.dart';
import 'package:ui/view/sumka.dart';

import 'model/home_status.dart';

// ignore: camel_case_types
class Home_page extends StatefulWidget {
  const Home_page({super.key});
  @override
  State<Home_page> createState() => _Home_pageState();
}

// ignore: camel_case_types
class _Home_pageState extends State<Home_page> {
  int _currentIndex = 0;
  int _selectedIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.badge),
    Icon(Icons.query_builder),
    Icon(Icons.person),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 15, 24),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 450,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 138, 151, 224),
                  Color.fromARGB(255, 120, 55, 231)
                ], begin: Alignment.bottomLeft, end: Alignment.bottomLeft),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                         Icon(
                          Icons.menu,
                          size: 25,
                          color: Colors.white,
                        ),
                         SizedBox(
                          width: 10,
                        ),
                        // FutureBuilder(
                        //   future: StatusService.getProfile(),
                        //   builder: (context, AsyncSnapshot snapshot) {
                        //     if (!snapshot.hasData) {
                        //       return const Center(
                        //         child: CircularProgressIndicator.adaptive(),
                        //       );
                        //     } else if (snapshot.hasError) {
                        //       return Text(snapshot.error.toString());
                        //     } else {
                        //       HomeProfil homeProfil =
                        //           snapshot.data as HomeProfil;
                        //       return AppBar(
                        //         title: ListTile(
                        //           title: Text(homeProfil.title.toString()),
                        //           subtitle: Text(homeProfil.name.toString()),
                        //         ),
                        //       );
                        //     }
                        //   },
                        // ),
                        
                        
                        const SizedBox(
                          width: 110,
                        ),
                        const Icon(
                          Icons.emoji_nature,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Row(
                      children: const [
                        Text(
                          "14,000 /",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          " 15,000",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "steps",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          "Level 5",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.amber,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://thumbs.dreamstime.com/b/golden-star-christmas-decoration-clipping-path-isolated-white-background-163815373.jpg"),
                          minRadius: 23,
                          maxRadius: 23,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 55),
                    child: Container(
                      width: 300,
                      height: 8,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Colors.purple,
                            Colors.green,
                            Colors.white,
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: 360,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 156, 113, 230),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/680/680546.png",
                            ),
                            maxRadius: 27,
                            minRadius: 27,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "26 May ",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Today ",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 15, 227, 22)),
                              ),
                              Text(
                                "01:09:44",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 110, top: 25),
                          child: Column(
                            children: const [
                              Text(
                                "2345",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "------",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "5000",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 45, 231, 51)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 140,
                          width: 164,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 156, 113, 230),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "53,524",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text(
                                "Steps",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 27,
                        ),
                        Container(
                          height: 140,
                          width: 164,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 156, 113, 230),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "1000",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text(
                                "Earned Points",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 140,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    Colors.indigo,
                    Colors.blue,
                    Color.fromARGB(255, 243, 96, 145),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Share & Get",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Get 2x point for every steps, ",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "only valid for today ",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 15),
              child: Row(
                children: const [
                  Text(
                    "History",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 80,
                  width: 360,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.indigo,
                        Colors.blue,
                        Color.fromARGB(255, 243, 96, 145),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "27 May",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 207, 110, 224),
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Text(
                              "100 pt ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "* 12,4 kcal ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "10,120",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Steps ",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: "Home",
                backgroundColor: Colors.blue,
                icon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => _screens[0])));
                    },
                    child: const Icon(Icons.home))),
            BottomNavigationBarItem(
                label: "Bag",
                icon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => _screens[1])));
                    },
                    child: const Icon(Icons.badge))),
            BottomNavigationBarItem(
                label: "O'clook",
                icon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => _screens[2])));
                    },
                    child: const InkWell(child: Icon(Icons.query_builder)))),
            BottomNavigationBarItem(
                label: "Person",
                icon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => _screens[3])));
                    },
                    child: const Icon(Icons.person))),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
          backgroundColor: const Color.fromARGB(255, 130, 70, 233)),
    );
  }

  late final List<Widget> _screens = [
    const Home(),
    const Bag(),
    const Sumke(),
    const Person(),
  ];
}