import 'package:flutter/material.dart';

class expansiontile extends StatelessWidget {
  const expansiontile({super.key});

  get index => [];

  @override
  Widget build(BuildContext context) {
    // String selectedText = 'No item selected';
List<String> data=['mango','kiwi','apple','banana'];

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ExpansionTile(
              title: Text("no item selected"),
              leading: Icon(Icons.info),
              backgroundColor: Colors.blue,
              minTileHeight: 10,
              tilePadding: EdgeInsets.all(10),
              children: [
                ListTile(
                  title: Text(data[0]),
                ),
                ListTile(
                  title: Text(data[1]),onTap: (){
                    Text(data[1]);
                  },
                ),
                ListTile(
                  title: Text(data[2]),
                ),
                ListTile(
                  title: Text(data[3]),
                )
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
