import 'package:flutter/material.dart';
import '../main.dart';

class bottomMenu extends StatelessWidget {
  const bottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 10),
        child: Container(
          height: 70.0,
          color: Colors.grey,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: IconButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => Main(),
                        )
                    );
                  },
                    icon: Icon(Icons.home, size: 30),
                ),
              ),
              Expanded(
                flex: 2,
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.list, size: 30),
                ),
              ),
              Expanded(
                flex: 2,
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.shopping_cart, size: 30),
                ),
              ),
              Expanded(
                flex: 2,
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.account_circle, size: 30),
                ),
              ),
            ],
          ),
        )
    );
  }
}
