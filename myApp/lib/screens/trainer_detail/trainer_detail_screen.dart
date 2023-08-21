import 'package:flutter/material.dart';
import 'package:flutter_application_1/log_in.dart';
import 'package:flutter_application_1/sign_up.dart';

class TrainerDetailScreen extends StatelessWidget {
  final String item;

  TrainerDetailScreen({required this.item});

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "images/pt_gym.png",
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          
                          "Training for Beginner: Learn the fundamentals of your basic health and basic training knowledge",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Expanded(
                    flex: 2,
                    child: Column(children: [
                      Text(
                        "About This Training Course",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      SizedBox(height: 10,),
                      Text("  - Earn your CPD Certificate"),
                      SizedBox(height: 10,),
                      Text("  - Help others lose fat & build muscle"),
                      SizedBox(height: 10,),
                      Text("  - Understand how to versatile your nutritious diet."),
                      SizedBox(height: 10,),
                      Text("  - Assess clients and determine fitness & strength levels."),
                      SizedBox(height: 10,),
                      Text("  - Create individual workouts and exercise programs"),
                      SizedBox(height: 10,),
                      Text("  - Understand the fundamentals of human anatomy"),
                      SizedBox(height: 10,),
                      Text("  - Know correct movement form for the most important exercises"),
                      SizedBox(height: 10,),
                      Text("  - Build and grow a coaching business (online or in person)"),  
                      SizedBox(height: 10,),
                      Text(
                        "Time: Flexible time, from Monday to Saturday.",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.center,
                        ), 
                      SizedBox(height: 10,),
                      Text(
                        "Hiring cost: 10\$/hour at Fit&Life gym.",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),                       
                    ],)
                  ),

                ],),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){}, child: Text("HIRE"))
                // Add more widgets to display trainer details
              ],
            ),
          ),
      ),
    );
  }
}
