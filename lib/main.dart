import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:another_dashed_container/another_dashed_container.dart';
import 'package:slide_switcher/slide_switcher.dart';
import 'package:intl/intl.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Map<IconData, bool> iconHoverStates = {
    FontAwesomeIcons.phone: false,
    Icons.mail: false,
    FontAwesomeIcons.whatsapp: false,
  };

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
                    width: 1.0,
                  ),
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 245, 245, 245), Colors.white],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            child: cardWShadow(
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 72),
                                    child: Column(
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
                                            fontSize: 14,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.5
                                          )
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    children: [
                                      circularIconButton(FontAwesomeIcons.phone, 22),
                                      SizedBox(width: 12),
                                      circularIconButton(Icons.mail, 26),
                                      SizedBox(width: 12),
                                      circularIconButton(FontAwesomeIcons.whatsapp, 26),
                                    ],
                                  ),
                                  SizedBox(height: 32),
                                  Text("Skills".toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    )
                                  ),
                                  SizedBox(height: 8),  
                                  Wrap(
                                    spacing: 20,
                                    runSpacing: 20,
                                    alignment: WrapAlignment.start,
                                    children: [
                                      pillTag("Front End Development"),
                                      pillTag("Back End Development"),
                                      pillTag("Mobile Development"),
                                      pillTag("UI Design"),
                                      pillTag("Digital Illustration"),
                                      pillTag("Graphic Design"),
                                      pillTag("Motion Design"),
                                    ],
                                  ),
                                  SizedBox(height: 32),
                                  Text("Programming Languages".toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    )
                                  ),
                                  SizedBox(height: 8),  
                                  Wrap(
                                    spacing: 20,
                                    runSpacing: 20,
                                    alignment: WrapAlignment.start,
                                    children: [
                                      rectangularIcon("assets/images/HTML5.png", 24),
                                      rectangularIcon("assets/images/CSS3.png", 24),
                                      rectangularIcon("assets/images/JavaScript.png", 24),
                                      rectangularIcon("assets/images/PHP.png", 24),
                                      rectangularIcon("assets/images/MySQL.png", 24),
                                      rectangularIcon("assets/images/PostgresSQL.png", 24),
                                      rectangularIcon("assets/images/Java.png", 24),
                                      rectangularIcon("assets/images/C++ (CPlusPlus).png", 24),
                                    ],
                                  ),
                                  SizedBox(height: 32),
                                  Text("Framework Knowledge".toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    )
                                  ),
                                  SizedBox(height: 8),  
                                  Wrap(
                                    spacing: 20,
                                    runSpacing: 20,
                                    alignment: WrapAlignment.start,
                                    children: [
                                      rectangularIcon("assets/images/Laravel.png", 24),
                                      rectangularIcon("assets/images/Vue.js.png", 24),
                                      rectangularIcon("assets/images/React.png", 24),
                                      rectangularIcon("assets/images/Flutter.png", 24),
                                      rectangularIcon("assets/images/Tailwind CSS.png", 24),
                                    ],
                                  ),
                                  SizedBox(height: 32),
                                  Text("Technologies".toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    )
                                  ),
                                  SizedBox(height: 8),  
                                  Wrap(
                                    spacing: 20,
                                    runSpacing: 20,
                                    alignment: WrapAlignment.start,
                                    children: [
                                      rectangularIcon("assets/images/Figma.png", 24),
                                      rectangularIcon("assets/images/GitHub.png", 24),
                                      rectangularIcon("assets/images/Adobe Photoshop.png", 24),
                                      rectangularIcon("assets/images/After Effects.png", 24),
                                      rectangularIcon("assets/images/Adobe Illustrator.png", 24),
                                    ],
                                  ),
                                ],
                              ), 600
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
                      cardWInnerShadow(
                        DashedContainer(
                          dashColor: Color(0xff957fef).withOpacity(.4),
                          borderRadius: 12.0,
                          dashedLength: 4.0,
                          blankLength: 4.0,
                          strokeWidth: 2.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("${DateFormat('MM-dd-yy').format(DateTime.now())}",
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 80,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0  
                                  )
                                ),
                                Row(
                                  children: [
                                    Text("${TimeOfDay.now().hourOfPeriod}:${TimeOfDay.now().minute.toString().padLeft(2, '0')}",
                                      style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 80,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0  
                                      )
                                    ),
                                    SizedBox(width: 24),
                                    IgnorePointer(
                                      child: SlideSwitcher(
                                        containerColor: Colors.white,
                                        slidersGradients: [
                                          LinearGradient(
                                            colors: [Color(0xff957fef), Color(0xffefd9ce)],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            stops:[0, 0.7]
                                          )
                                        ],
                                        slidersBorder: Border.all(
                                          width: 1,
                                          color: Colors.white
                                        ),
                                        containerBoxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(255, 200, 200, 200).withOpacity(.4),
                                            spreadRadius: 2,
                                            blurRadius: 4,
                                            offset: Offset(2, 2)  
                                          ),
                                        ],
                                        containerHeight: 64,
                                        containerWight: 32,
                                        direction: Axis.vertical,
                                        children:[
                                          Container(),
                                          Container()
                                        ],
                                        onSelect: (index) => {},
                                        isAllContainerTap: true,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text("AM",
                                          style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500
                                          )
                                        ),
                                        SizedBox(height: 4),
                                        Text("PM",
                                          style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500
                                          )
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ]
                            ),
                          ),
                        ),
                        800
                      )
                    ],
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }

  Widget cardWShadow(Widget widget, double size) {
    return Container(
      width: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 1.0,
          strokeAlign: 1
        ),
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 245, 245, 245), Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0, 1]
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
          child: widget
        ),
      ),
    );
  }

  Widget cardWInnerShadow(Widget widget, double size) {
    return Stack(
      children: [
        Container(
          width: size,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 1.0,
              strokeAlign: 1
            ),
            borderRadius: BorderRadius.circular(24),
            color: Color.fromARGB(255, 230, 230, 230),
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
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: widget
            ),
          ),
        ),
        Positioned.fill(
          top: 12,
          left: 12,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            //filter: 
            child: Container(
              width: size,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1.0,
                  strokeAlign: 1
                ),
                borderRadius: BorderRadius.circular(18),
                //color: Colors.red,
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 245, 245, 245), Colors.white],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0, 1]
                ),
              ),
              child: Card(
                color: Colors.transparent,
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                  child: Container(
                    color: Colors.transparent
                  )
                ),
              ),
            ),
          ),
        ),
        Container(
          width: size,
          color: Colors.transparent,
          child: Card(
            color: Colors.transparent,
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: widget
            ),
          ),
        ),
      ]
    );
  }

  Widget pillTag(String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 250, 250, 250),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Text(text,
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 16,
            color: Color(0xff957fef)
          )
        ),
      )
    );
  }

  Widget circularIconButton(IconData icon, double size) {
    bool isHovered = iconHoverStates[icon]!;
    
    return Container(
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
                iconHoverStates[icon] = true;
              });
            },
            onExit: (_){
              setState(() {
                iconHoverStates[icon] = false;
              });
            },
            child: InkWell(
              borderRadius: BorderRadius.circular(40),
              radius: 40,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 250, 250, 250),
                  // gradient: RadialGradient(
                  //   colors: [Colors.white, Colors.white24],
                  // stops: [0.4, 1],
                  //   ),
                ),
                child: Center(
                  child: ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (Rect bounds) => LinearGradient(
                      stops: [0, .6],
                      colors: [Color(0xff957fef), Color(0xffefd9ce),
                      ],
                    ).createShader(bounds),
                    child: FaIcon(
                      icon,
                      size: size,
                      color: Color.fromARGB(255, 100, 100, 100),
                    ),
                  ),
                ),
              ),
              onTap: (){
                print("Icon Button Pressed");
              },
            ),
          ),  
        ),
      ),
    );
  }

  Widget rectangularIcon(String imagePath, double size) {    
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
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
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(255, 250, 250, 250),
        ),
        child: Center(
          child: Image.asset(
            imagePath,
            height: size,
            width: size,
          )
        ),
      ),  
    );
  }
}
