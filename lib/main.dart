import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:another_dashed_container/another_dashed_container.dart';
import 'package:slide_switcher/slide_switcher.dart';
import 'package:intl/intl.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';


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
    Icons.play_arrow: false,
    Icons.skip_previous: false,
    Icons.skip_next: false,
    FontAwesomeIcons.shuffle: false,
    FontAwesomeIcons.rotate: false
  };
  Map<IconData, bool> iconClickStates = {
    FontAwesomeIcons.phone: false,
    Icons.mail: false,
    FontAwesomeIcons.whatsapp: false,
    Icons.play_arrow: false,
    Icons.skip_previous: false,
    Icons.skip_next: false,
    FontAwesomeIcons.shuffle: false,
    FontAwesomeIcons.rotate: false
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
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
                                    padding: const EdgeInsets.only(left: 108),
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
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            circularIconButton(FontAwesomeIcons.phone, 22, 40),
                                            SizedBox(width: 12),
                                            circularIconButton(Icons.mail, 26, 40),
                                            SizedBox(width: 12),
                                            circularIconButton(FontAwesomeIcons.whatsapp, 26, 40),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 24),
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
                              ), 600, 32, 20
                            ),
                          ),
                          Positioned(
                            left: -48,
                            top: -48,
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
                                radius: 72,
                                child: Icon(Icons.person,
                                  size: 72,
                                  color: Color.fromARGB(255, 100, 100, 100),
                                )
                              ),  
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          cardWInnerShadow(
                            DashedContainer(
                              dashColor: Color(0xff957fef).withOpacity(.4),
                              borderRadius: 12.0,
                              dashedLength: 4.0,
                              blankLength: 4.0,
                              strokeWidth: 2.0,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Wrap(
                                      spacing: 16,
                                      children: [
                                        Column(
                                          children: [
                                            containerWInnerShadow(
                                              Center(
                                                child: Text("${DateFormat('MM').format(DateTime.now())}",
                                                  style: TextStyle(
                                                    fontFamily: "Montserrat",
                                                    fontSize: 56,
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 0  
                                                  )
                                                ),
                                              ), 96, "circle", 4
                                            ),
                                          ]
                                        ),
                                        Column(
                                          children: [
                                            containerWInnerShadow(
                                              Center(
                                                child: Text("${DateFormat('dd').format(DateTime.now())}",
                                                  style: TextStyle(
                                                    fontFamily: "Montserrat",
                                                    fontSize: 56,
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 0  
                                                  )
                                                ),
                                              ), 96, "circle", 4
                                            ),
                                          ]
                                        ),
                                        Column(
                                          children: [
                                            containerWInnerShadow(
                                              Center(
                                                child: Text("${DateFormat('yy').format(DateTime.now())}",
                                                  style: TextStyle(
                                                    fontFamily: "Montserrat",
                                                    fontSize: 56,
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 0  
                                                  )
                                                ),
                                              ), 96, "circle", 4
                                            ),
                                          ]
                                        ),
                                      ],
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
                                        RotatedBox(
                                          quarterTurns: 1,
                                          child: IgnorePointer(
                                            child: SlideSwitcher(
                                              initialIndex: TimeOfDay.now().hour > 12 ? 1 : 0,
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
                                              containerHeight: 32,
                                              containerWight: 64,
                                              //direction: Axis.vertical,
                                              children:[
                                                Container(),
                                                Container()
                                              ],
                                              onSelect: (index) => {},
                                            ),
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
                          ),
                          SizedBox(height: 64),
                          cardWShadow(
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  containerWInnerShadow(
                                    Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [Color.fromARGB(255, 230, 230, 230), Colors.white],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          stops: [0, 1]
                                        ),
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(255, 200, 200, 200).withOpacity(.4),
                                            spreadRadius: 4,
                                            blurRadius: 4,
                                            //offset: Offset(2, 2)  
                                          ),
                                        ]
                                      ),
                                      child: CircleAvatar(
                                        radius: 124,
                                        backgroundColor: Colors.transparent,
                                        child: ClipOval(
                                          child: Image.asset("assets/images/Album Cover_Epic_Wisdom Saga.jpg",
                                            height: 480,
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                      ),
                                    ), 360, "circle", 18
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text("Love In Paradise",
                                          style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 24
                                          )
                                        ),
                                        SizedBox(height: 4),
                                        Text("Jorge Rivera-Herrans",
                                          style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600
                                          )
                                        ),
                                        SizedBox(height: 48),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(64),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(255, 200, 200, 200).withOpacity(.3),
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
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
                                            child: ProgressBar(
                                              baseBarColor: Color(0xffefd9ce),
                                              progressBarColor: Color(0xff957FEF),
                                              //thumbColor: Colors.white,
                                              timeLabelTextStyle: TextStyle(
                                                fontFamily: "Montserrat",
                                                fontSize: 14
                                              ),
                                              progress: Duration(seconds: 120),
                                              total: Duration(seconds: 180)
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 36),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            circularIconButton2(
                                              Icons.skip_previous, 32, 40
                                            ),
                                            SizedBox(width: 24),
                                            circularIconButton2(
                                              Icons.play_arrow, 48, 64
                                            ),
                                            SizedBox(width: 24),
                                             circularIconButton2(
                                              Icons.skip_next, 32, 40
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 12),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            circularIconButton2(
                                              FontAwesomeIcons.shuffle, 24, 40
                                            ),
                                            SizedBox(width: 48),
                                             circularIconButton2(
                                              FontAwesomeIcons.rotate, 24, 40
                                            ),
                                          ],
                                        )
                                      ]
                                    ),
                                  )
                                ],
                              ),
                            ), 800, 32, 32
                          ),
                        ],
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

  Widget cardWShadow(Widget widget, double size, double padding1, double padding2) {
    return Container(
      width: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2.0,
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
          padding: EdgeInsets.symmetric(horizontal: padding1, vertical: padding2),
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
              width: 2.0,
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

  Widget containerWInnerShadow(Widget widget, double size, String shape, double padding) {
    return Stack(
      children: [
        Container(
          width: size,
          decoration: BoxDecoration(
            shape: shape == "circle" ? BoxShape.circle : BoxShape.rectangle,
            border: Border.all(
              color: Colors.white,
              width: 2.0,
              strokeAlign: 1
            ),
            borderRadius: shape == "circle" ? null : BorderRadius.circular(24),
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
              padding: EdgeInsets.all(padding),
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
                shape: shape == "circle" ? BoxShape.circle : BoxShape.rectangle,
                border: Border.all(
                  color: Colors.white,
                  width: 1.0,
                  strokeAlign: 1
                ),
                borderRadius: shape == "circle" ? null : BorderRadius.circular(18),
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
                  padding: EdgeInsets.all(padding),
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
              padding:
               EdgeInsets.all(padding),
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

  Widget circularIconButton(IconData icon, double iconSize, double size) {
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
              radius: size,
              child: Container(
                height: size,
                width: size,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 250, 250, 250),
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
                      size: iconSize,
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

  Widget circularIconButton2(IconData icon, double iconSize, double size) {
    bool isHovered = iconHoverStates[icon]!;
    bool isClicked = iconClickStates[icon]!;
    
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 200, 200, 200).withOpacity(.4),
            spreadRadius: 4,
            blurRadius: 8,
            offset: Offset(4, 4)
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: 4,
            blurRadius: 8,
            offset: Offset(-4, -4)
          )
        ]
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: isHovered ? [Color(0xff957fef), Color(0xffefd9ce)] : [Colors.transparent, Colors.transparent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
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
              radius: size,
              child: Container(
                height: size,
                width: size,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 250, 250, 250),
                ),
                child: Center(
                  child: ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (Rect bounds) => LinearGradient(
                      stops: [0, .6],
                      colors: isHovered ? [Color(0xff957fef), Color(0xffefd9ce)] : [Color.fromARGB(255, 100, 100, 100), Color.fromARGB(255, 100, 100, 100)],
                    ).createShader(bounds),
                    child: FaIcon(
                      icon,
                      size: iconSize,
                      color: Color.fromARGB(255, 100, 100, 100),
                    ),
                  ),
                ),
              ),
              onTap: (){
                setState(() {
                  isClicked = !isClicked;
                });
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
