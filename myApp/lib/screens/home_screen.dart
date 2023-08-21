import 'package:flutter/material.dart';
import 'package:flutter_application_1/log_in.dart';
import 'package:flutter_application_1/screens/back_screen/back_screen.dart';
import 'package:flutter_application_1/screens/chest_screen/chest_screen.dart';
import 'package:flutter_application_1/screens/muscle_screen/muscle_screen.dart';
import 'package:flutter_application_1/screens/neck_screen/neck_scren.dart';
import 'package:flutter_application_1/screens/thigh_screen/thigh_screen.dart';
import 'package:flutter_application_1/sign_up.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              hintStyle: TextStyle(color: Colors.grey),
            ),
            style: TextStyle(color: Colors.black),
          ),
        ),
          actions: [
            PopupMenuButton<String>(
                onSelected: (value) {
                  if (value == 'Signup') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                  } else if (value == "Login") {
                   
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogInScreen(),
                      ),
                    );
                  }                  
                },
                itemBuilder: (context) => [
                      PopupMenuItem<String>(
                          value: 'Login',
                          child: ListTile(
                            leading: Icon(Icons.login, color: Colors.blueAccent),
                            title: Text('Log In'),
                          )),
                      PopupMenuItem<String>(
                          value: 'Signup',
                          child: ListTile(
                            leading: Icon(Icons.app_registration,
                                color: Colors.blueAccent),
                            title: Text('Sign Up'),
                          ))
                    ])
          ],
        ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Container(
              child: Row(children: [
                 Expanded(
                  flex: 1,
                   child: Container(
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "What Will You",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Text(
                            "Dicover ?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Explore new skills, deepen existing passions, and get lost in creativity."),
                        )
                      ]),
                    ),
                 ),
                 Expanded(
                  flex: 3,
                   child: Container(
                      child: Image.asset("images/ads.png"),
                    ),
                 ),
              ]),
            ),
            SizedBox(height: 50,),
            Container(
              child: Column(children: [
                Text("Be Fit - Be You", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                DefaultTabController(
                  length: 5, 
                  child: Column(
                        children: [
                          TabBar(
                            tabs: [
                              Tab(text: "Neck"),
                              Tab(text: "Abdominal Muscle"),
                              Tab(text: "Thigh"),
                              Tab(text: "Chest"),
                              Tab(text: "Back"),
                            ],
                            labelColor: Colors.blue,
                            unselectedLabelColor: Colors.black,
                            indicatorColor: Colors.blue,
                          ),
                          SizedBox(
                            height: 300, // Adjust the height as needed
                            child: TabBarView(
                              children: [
                                NeckScreen(),
                                MuscleScreen(),
                                ThighScreen(),
                                ChestScreen(),
                                BackScreen(),
                              ],
                            ),
                          ),
                        ],
                      ),)
              ]),
            ),
            Container(
              child: Row(
                children: [
                Expanded(
                  flex: 3,
                   child: Container(
                      child: Image.asset("images/ads_2.png"),
                    ),
                 ),
                 Expanded(
                  flex: 1,
                   child: Container(
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Become a Personal Trainer",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color.fromARGB(255, 2, 20, 36)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("If you have great experience in training, you can register here to become a personal trainer!", textAlign: TextAlign.justify,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Wrap(
                            children: [
                              Text('We provide the '),
                              Text('BEST OFFER', style: TextStyle(color: Colors.red)),
                              Text(' and the '),
                              Text('GREATEST TRAINING ATMOSPHERE', style: TextStyle(color: Colors.yellow[600])),
                              Text(" here."),
                            ],
                          ),
                        ),
                        ElevatedButton(onPressed: (){}, child: Center(child: Text("Become a personal trainer")))

                      ]),
                    ),
                 ),
                 
              ]),
            )
          ],),
        ),
      )
    );
  }
}
