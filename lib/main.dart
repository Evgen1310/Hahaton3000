import 'package:flutter/material.dart';
import 'models/cloth_card.dart';
import 'widgets/ClothWidget.dart';
import 'widgets/bottomMenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes:{
        '/': (context) => const Main(),
        //'/clothPage': (Cloth) => clothPage(cloth: Cloth,),
      },
      title: 'Catalouge',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text("die"),
      ),*/
      backgroundColor: Colors.grey[300],
      body: ShoppingPage(),
    );
  }
}



class ShoppingPage extends StatelessWidget {

  ShoppingPage({super.key});

  List<Cloth> clothCards = [
    Cloth(name: "Платье", iconPath: "assets/dress.png", price: 200),
    Cloth(name: "Рубашка поло", iconPath: "assets/polo.png", price: 100),
    Cloth(name: "Рубашка поло", iconPath: "assets/polo.png", price: 20),
    Cloth(name: "Платье", iconPath: "assets/dress.png", price: 400),
    Cloth(name: "Платье", iconPath: "assets/dress.png", price: 10),
    Cloth(name: "Рубашка поло", iconPath: "assets/polo.png", price: 700),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: clothCards.map((Cloth clothCur) => ClothWidget(cloth: clothCur)).toList(),
          ),
        ),
        bottomMenu(),
      ],
    );
  }
}

/*
class HintText extends StatelessWidget {
  final String text;
  const HintText({
    Key? key,
    required this.text,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.amber,
        ),
      child: Text(text),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.amber,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: _decrease,
              child: Text("-")
          ),
          SizedBox(width: 8),
          Text("$_count"),
          SizedBox(width: 8),
          ElevatedButton(
              onPressed: _increase,
              child: Text("+")
          )
        ],
      ),
    );
  }

  void _decrease(){
    setState(() {
      _count -=1;
    });
  }
  void _increase(){
    setState(() {
      _count +=1;
    });
  }
*/
//}
