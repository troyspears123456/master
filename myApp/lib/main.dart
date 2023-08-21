import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/sign_up.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //     options: FirebaseOptions(
  //         apiKey: 'AIzaSyC7DrVE6Xw76BcSs49t3f3zA3jN2Q136Ug',
  //         appId: '1:20460630059:web:4958c915084ae915933a6e',
  //         messagingSenderId: '',
  //         projectId:
  //             'finalterm-fb4d0')); 

  runApp(SalesPage());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      debugShowCheckedModeBanner: false,
      home: SalesPage(),
    );
  }
}

class SalesPage extends StatelessWidget {
  const SalesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CS428',
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}

class SalesHomePage extends StatefulWidget {
  const SalesHomePage({Key? key}) : super(key: key);

  @override
  State<SalesHomePage> createState() => _SalesHomePageState();
}

class _SalesHomePageState extends State<SalesHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CS428',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Sales'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/product_image.jpg', width: 300, height: 300),
              SizedBox(height: 20),
              Text(
                'Awesome Product',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Description: This is the most amazing product you have ever seen!',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

