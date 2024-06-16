import 'package:flutter/material.dart';

class cpb extends StatelessWidget {
  const cpb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(width: 400,height: 400,
              child: CircularProgressIndicator(strokeAlign: BorderSide.strokeAlignCenter,
                color: Colors.blue,
                strokeWidth: 7,
              ),
              
            ),
          
          Container(
            child: LinearProgressIndicator(
                backgroundColor: Colors.red,  
                   borderRadius: BorderRadius.circular(5),
            ),
          )
        ],
      ),
    );
  }
}