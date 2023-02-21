import 'package:day1flutter/dashboard.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Bienvenue\n"
            "Chez Dev Null !!"),
        centerTitle: true,
      ),
      body: bodyPage(),
    );
  }
  Widget bodyPage(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 120,
            backgroundImage: AssetImage("asset/zozo.png"),
          ),
          TextField(
            controller: mailController,
            decoration: InputDecoration(
              hintText: "Entrez votre adresse mail"
            ),
          ),
          TextField(
            obscureText: true,
            controller: passwordController,
            decoration: InputDecoration(
              hintText: "Entrez votre password"
            ),
          ),
          const SizedBox(height: 10),

          ElevatedButton(

            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              elevation: 10,
            ),
              onPressed: (){
              // action du bouton
              // naviger vers la page dashboard
              Navigator.push(context, MaterialPageRoute(
                  builder:(context){
                    return DashBoard(password: passwordController.text ,);
                  }
              ));

              },
              child:const Text("Connection")
          ),
          TextButton(
              onPressed: (){

              },
              child: const Text("Inscription"))
        ],
      ),
    ); //CircleAvatar
      //Image.asset("asset/zozo.png");
  }
}
