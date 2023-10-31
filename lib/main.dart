import 'dart:async';

import 'package:flutter/material.dart';

void main(){
  runApp(
      const MaterialApp(
        title: "My Splash Screen",
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      )
  );
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){

    super.initState();
    // Timer(
    //   Duration(seconds: 5),
    //     ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
    //     (BuildContext context) => NextScreen())
    // )
    //
    // );

    Timer(
        const Duration(seconds: 5),
            ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
            (BuildContext context) => const NextScreen())
        )

    );



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 500, // Adjust the width as desired
          height: 500, // Adjust the height as desired
          child: Image.asset('assets/images/splash.jpg'),
        ),

      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Next Imag"),
      ),
      // body: Center(
      //   child: Text("Next Screen Text" , style: TextStyle(fontSize: 20.0),),
      // ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
             decoration: BoxDecoration(color: Colors.blueAccent),
           accountEmail: Text(
              "minujadhav1999@gmail.com",
                style: TextStyle(fontSize: 18),
          ),
           currentAccountPictureSize: Size.square(60),
            currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage('assets/images/minu.jpg'),
      ), accountName: null,
    ),
    ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.account_box),
              title: const Text("About"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.grid_3x3_outlined),
              title: const Text("Products"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text("Contact"),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
//
//     );
//   }
 }