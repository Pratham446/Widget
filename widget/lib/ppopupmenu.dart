import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class popupmenuu extends StatefulWidget {
  const popupmenuu({super.key});

  @override
  State<popupmenuu> createState() => _popupmenuuState();
}

class _popupmenuuState extends State<popupmenuu> {
  PageController pc = PageController();
  String fp = "FirstPage";
  String lp = "lastpage";
  String text = "This is Appbar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
        shadowColor: Colors.grey,
        backgroundColor: Colors.blueAccent.shade100,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              // this with create a button & itembuilder is called for each item in the list
              PopupMenuItem(
                child: Text(fp),
                value: fp,
              ),
              PopupMenuItem(
                child: Text(lp),
                value: lp,
              )
            ],
            onSelected: (value) => setState(() {
              text = value;
              if (value == fp) {
                pc.jumpToPage(1);
              } else if (value == lp) {
                pc.jumpToPage(2);
              }
            }),
          ),
        ],
      ),
      body: PageView(
        controller: pc,
        children: [Container(),first(), second()],
      ),
    );
  }
}








class first extends StatelessWidget {
  const first({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 145, 36, 3),
    );
  }
}

class second extends StatelessWidget {
  const second({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
    );
  }
}
