import 'package:first_project/models/cloth_card.dart';
import 'package:first_project/pages/clothPage.dart';
import 'package:flutter/material.dart';

class ClothWidget extends StatelessWidget {
  final Cloth cloth;

  const ClothWidget({
    required this.cloth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
      child: TextButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[400],
          ),
        onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(
                builder: (context) => clothPage(cloth: cloth)
            )
          );
        },
        child: SizedBox(
          //height: 10000,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 10,),
              Expanded(
                flex: 3,
                child: Image.asset(
                  cloth.iconPath,
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Цена: "+cloth.price.toString(),
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                cloth.name,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(flex: 1, child: Icon(size: 30, Icons.add_shopping_cart, color: Colors.black,)),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
