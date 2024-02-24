import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePages(),
    );
  }
}


class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int cont = 0;
  String status = "Bem Vindo!!!!!";

  void decrement() {
      setState(() {
        cont--;
      });
    print(cont);
  }

  void increment() {
      setState(() {
        status = "Prode Entrar!!!";
        cont++;
      });
  }

  bool get isEmpty => cont ==0;
  bool get isFull => cont ==20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isFull ? 'Lotado':'Pode Entrar!!!' ,
              style: TextStyle(
                  fontSize: 20,
                  color: isFull ? Colors.red: Colors.green,
                  fontWeight: FontWeight.w800),
            ),
             Text(
              cont.toString(),
              style: TextStyle(
                  fontSize: 40,
                  color: isFull ? Colors.red: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: isEmpty ? null : decrement,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: isEmpty ? Colors.white.withOpacity(0.2): Colors.white,
                    fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text("Sair!"),
                ),
                //
                const SizedBox(
                  width: 102,
                ),
                TextButton(
                  onPressed: isFull ? null: increment,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: isFull ? Colors.white.withOpacity(0.2): Colors.white,
                    fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text("Entrar!"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}



