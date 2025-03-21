import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 3),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.pink.shade300, Colors.purple.shade500],
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset("assets/images/bg.jpg", fit: BoxFit.cover),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 70),
                  Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 110,
                      height: 110,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      Text(
                        "S ' N A I L",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Your Personal Inventory",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 70),
                  Image.asset('assets/images/mid.png', fit: BoxFit.contain),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Order Nail Art",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 220,
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.white.withOpacity(0.2),
                                  Colors.pinkAccent.withOpacity(0.6),
                                ],
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                                prefixIcon: Icon(
                                  Icons.search_rounded,
                                  color: Colors.black54,
                                ),
                                hintText: "Search Product",
                                hintStyle: TextStyle(color: Colors.black54),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),

                        /// Icons with Space Between
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.menu_rounded,
                              size: 28,
                              color: Colors.white,
                            ),
                            SizedBox(width: 15),
                            Icon(
                              Icons.grid_view_rounded,
                              size: 28,
                              color: Colors.white,
                            ),
                            SizedBox(width: 15),
                            Icon(
                              Icons.square_rounded,
                              size: 28,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
