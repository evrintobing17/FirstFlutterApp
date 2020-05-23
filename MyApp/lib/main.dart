import 'package:flutter/material.dart';
import 'package:MyApp/components.dart';
import 'package:MyApp/sliders.dart';
import 'package:MyApp/skills.dart';
import 'package:MyApp/socialmedia.dart';


void main() {
  runApp(MyApp());
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portofolio',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverSafeArea(
            sliver: SliverAppBar( 
              expandedHeight: 500,
              // expandedHeight: MediaQuery.of(context).size.height,
                flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.black87,
                  // height: MediaQuery.of(context).size.height,
                  
                  child: Image.asset(
                    "assets/home.jpg",
                    fit: BoxFit.cover,
                  ),
                  
                ),
                title: Center(
                  child: Container(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  color: Color.fromRGBO(255, 255, 255, 0),
                  width: 900,
                  height: 300,
                  // padding:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ,
                  child: Center(
                    child: Text(
                      "Welcome to My Blog",
                      textAlign:TextAlign.center,
                      style: TextStyle(
                        fontSize: 76,
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    ),
                  )
                ),
              ),
            ),
          ),
          
          sliverContentAbout(),
          sliverPersonalInfo(),
          sliderMyActivity(),
          sliverEducation(),
          // sliverExperience(),
          // skillBarCharts(),
          skills(),
          sosmed(),
          copyRight()
          
        ],
      ),
    );
  }

  Widget sliverPersonalInfo() {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            textH1("Personal info", Colors.black87),
            SizedBox(
              height: 16,
            ),
            textRow("Name", "Evrin Lumbantobing"),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 8,
            ),
            textRow("Birthday", "26 Januari 1999"),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 8,
            ),
            textRow("Nationality", "Indonesian"),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 8,
            ),
            textRow("email", "evrintobing@gmail.com"),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 8,
            ),
            textRow("language", "Indonesia, English"),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 8,
            ),
            textRow("Address", "Tarutung"),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }

  Widget sliverContentAbout() {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image.asset(
              "assets/avatar.png",
              scale: 2,
            ),
            SizedBox(
              height: 16,
            ),
            textH1("About me", Colors.black87),
            SizedBox(
              height: 16,
            ),
            Container(
              child:Text(
                "Experienced Back End Developer with a demonstrated history of working in the computer software industry. Skilled in Python (Programming Language), Microsoft Word, Sublime Text, PHP, and English. Strong engineering professional with a Bachelor's degree focused in Computer Science from Institut Teknologi Del.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
                ),)
            
          ],
        ),
      ),
    );
  }

  Widget sliverEducation() {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Divider(
              height: 2,
            ),
            textH1("Education", Colors.black87),
            SizedBox(
              height: 16,
            ),
            _builderStep(),
          ],
        ),
      ),
    );
  }

   var _index = 4;

  Widget _builderStep() => Container(
        margin: EdgeInsets.only(top: 10),
        child: Stepper(
          steps: [
            Step(
              title: textH3("TK Santa Maria Tarutung", Colors.black), 
              content: Text(""),
              isActive: true,
              state: StepState.complete),
            Step(
                title: textH3("SD Swasta Santa Maria Tarutung", Colors.black),
                content: Text("Graduation (2004-2010)"),
                isActive: true,
                state: StepState.complete),
            Step(
                title: textH3("SMP Swasta Santa Maria Tarutung", Colors.black),
                content: Text("Graduation (2010-2013)"),
                isActive: true,
                state: StepState.complete),
            Step(
                title: textH3("SMA RK Budi Mulia Pematang siantar", Colors.black),
                content: Text("Graduation (2013-2016)"),
                isActive: true,
                state: StepState.complete),
            Step(
                title: textH2("Institut Teknologi Del", Colors.black),
                content: Text(
                    "Final Year Student"),
                isActive: true,
                state: StepState.error),
          ],
          onStepCancel: () {
            print("You are clicking the cancel button.");
          },
          onStepContinue: () {
            print("You are clicking the continue button.");
          },
          currentStep: _index,
          onStepTapped: (index) {
            setState(() {
              _index = index;
            });
          },
          controlsBuilder: (BuildContext context,
                  {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
              Container(),
        ),
      );

  Widget copyRight() {
    return SliverToBoxAdapter(
      child: Column(
        children: <Widget>[
          textH3("Copyright © Evrin ", Colors.black87),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
