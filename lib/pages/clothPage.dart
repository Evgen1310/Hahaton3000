import 'package:flutter/material.dart';
import '../models/cloth_card.dart';
import '../widgets/bottomMenu.dart';

class clothPage extends StatelessWidget {
  final Cloth cloth;
  
  const clothPage({
    super.key,
    required this.cloth,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      backgroundColor: Colors.grey[300],
      body: aboutCloth(cloth: cloth),
    );
  }
}

class aboutCloth extends StatelessWidget {
  final Cloth cloth;

  const aboutCloth({
    super.key,
    required this.cloth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 100),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(100)
                ),
                child: //Image.asset(cloth.iconPath, fit: BoxFit.scaleDown,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(cloth.iconPath, fit: BoxFit.scaleDown,),
                )
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Text(
                  "Товар: " + cloth.name,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.checkroom,
                      size: 40,
                    ),
                    label: Text(
                        'Примерка.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ), // <-- Text
                  ),
                ),
              )
            ]
          ),
        ),
        bottomMenu(),
      ],
    );
  }
}

