import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/images.jpg'),
            fit: BoxFit.cover,
          ),
          ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Pode entrar",style: TextStyle(fontSize: 50,color: isFull ? Colors.red :Colors.white,),),
           Padding(padding: const EdgeInsets.all(35),child:Text("$count",style: TextStyle(fontSize: 100,color: isFull ? Colors.red :Colors.white,),) ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: isEmpty ? null : dNumber, child: Text("Saiu"),
              style: TextButton.styleFrom(
                backgroundColor: isEmpty ? Colors.white.withOpacity(.2) : Colors.white,
                fixedSize: const Size(100, 100),
                primary: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24),),
              ),),
              const SizedBox(width: 32),
              TextButton(onPressed: isFull ? null : addNumber, child: Text("Entrou"),style: TextButton.styleFrom(
                backgroundColor: isFull ? Colors.white.withOpacity(.2) : Colors.white,
                fixedSize: const Size(100, 100),
                primary: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24),),
              ),),
            ],
          ),
        ],
      ),
      ),
    );
  }
  bool get isEmpty => count < 1;
  bool get isFull => count >= 20;

  void addNumber(){
    setState(() {
      count++;
    });
    print(count);
  }
  void dNumber(){
    setState(() {
      count--;
    });
    print(count);
  }
}