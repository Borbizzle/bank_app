import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'NavBarDemo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login UI',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const NavBar(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bank App', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold,
        ),),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.greenAccent,
        elevation: 18,
        shadowColor: Colors.green,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
        ),
      ),
      body: Container(
        height: 150,
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(32.0),
        ),
        child: Column(
          children: const <Widget>[
            Text(
              'Total Balance',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
              ),
            ),
            Text('\$ 12, 269', style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      )
    );
  }
}



