import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        appBar: AppBar(

          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 230, 230, 230), Colors.white],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 200, 200, 200).withOpacity(.4),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(2, 2)  
                    ),
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(-2, -2)
                    )
                  ]
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 36,
                  child: Icon(Icons.person,
                    size: 28,
                    color: Color.fromARGB(255, 100, 100, 100),
                  )
                ),  
              ),
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Action when the settings icon is pressed
              },
            ),
          ],
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width*.10, vertical: 64),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        child: Container(
                          width: 640,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                              strokeAlign: 1
                            ),
                            borderRadius: BorderRadius.circular(24),
                            gradient: LinearGradient(
                              colors: [Color.fromARGB(255, 230, 230, 230), Colors.white],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 200, 200, 200).withOpacity(.4),
                                spreadRadius: 8,
                                blurRadius: 16,
                                offset: Offset(8, 8)
                              ),
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 8,
                                blurRadius: 16,
                                offset: Offset(-8, -8)
                              )
                            ]
                          ),
                          child: Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20),
                              child: Column(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Josh Banggud",
                                        style: TextStyle(
                                          height: 1,
                                          fontSize: 44,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w800,
                                          letterSpacing: 0.5
                                        )
                                      ),
                                      Text("Front End Developer",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                        )
                                      ),
                                      SizedBox(height: 12),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                            colors: isHovered ? [Color(0xff957fef), Color(0xffefd9ce)] : [Colors.transparent, Colors.transparent],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight
                                          )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 8, left: 8, right: 6, bottom: 6),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(255, 200, 200, 200).withOpacity(.4),
                                                  spreadRadius: 2,
                                                  blurRadius: 4,
                                                  offset: Offset(2, 2)
                                                ),
                                                BoxShadow(
                                                  color: Colors.white,
                                                  spreadRadius: 2,
                                                  blurRadius: 4,
                                                  offset: Offset(-2, -2)
                                                )
                                              ]
                                            ),
                                            child: MouseRegion(
                                              onEnter: (_){
                                                setState(() {
                                                  isHovered = true;
                                                });
                                              },
                                              onExit: (_){
                                                setState(() {
                                                  isHovered = false;
                                                });
                                              },
                                              child: InkWell(
                                                radius: 36,
                                                child: Container(
                                                  height: 36,
                                                  width: 36,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    gradient: RadialGradient(
                                                      colors: [Colors.white, Colors.white24],
                                                    stops: [0.4, 1],
                                                      ),
                                                  ),
                                                  child: Icon(Icons.phone,
                                                    size: 24,
                                                    color: Color.fromARGB(255, 100, 100, 100),
                                                  ),
                                                ),
                                                onTap: (){
                                                  print("Icon Button Pressed");
                                                },
                                              ),
                                            ),  
                                          ),
                                        ),
                                      ),
                                    ],
                                  )     
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: -32,
                        top: -32,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 12.0,
                            ),
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [Color.fromARGB(255, 230, 230, 230), Colors.white],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 200, 200, 200).withOpacity(.4),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: Offset(2, 2)
                              ),
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: Offset(-2, -2)
                              )
                            ]
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 48,
                            child: Icon(Icons.person,
                              size: 48,
                              color: Color.fromARGB(255, 100, 100, 100),
                            )
                          ),  
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12
                  ),
                  
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
