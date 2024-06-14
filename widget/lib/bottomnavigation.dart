// import 'package:basics/11Customwidget.dart';
import 'package:flutter/material.dart';

class bnb extends StatefulWidget {
  const bnb({super.key});

  @override
  State<bnb> createState() => _bnbState();
}

class _bnbState extends State<bnb> {
  int selectedIndex = 0;
  final PageController pageController = PageController(initialPage: 0); //this is main thing

  void navigation(int index) {
    setState(() {
      selectedIndex = index;
      pageController.jumpToPage(index);   //this is the main thing

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(controller: pageController,
          children: [
            home(),
            second(),
            third(),
            fourth(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: navigation,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Home',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet),
                label: 'Wallet',
                backgroundColor: Colors.purpleAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.airline_seat_legroom_normal),
                label: 'airline',
                backgroundColor: Colors.yellowAccent),    ],
        ));
  }
}
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("date"),
              ElevatedButton(
                  onPressed: () async {
                    final DateTime? datepicked = await showDatePicker(
                        context: context,
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2023));

                    if (datepicked != null) {
                      print(
                          "${datepicked.day} ${datepicked.month} ${datepicked.year}");
                    }
                  },
                  child: Text("Select date")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? t = await showTimePicker(
                        context: context, initialTime: TimeOfDay.now());
                        print("${TimeOfDay.now()}");
                  
                  },
                  
                  child: Text("SElect time")),
                  
            ],
          ),
        ),
      ),
    );
  }
}
// Screens for the different bottom navigation items
class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: const Text('second'));
  }
}
// Screens for the different bottom navigation items
class third extends StatelessWidget {
  const third({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(child: Container(width: 200,height: 200,color: Colors.blue,),left: 20,top: 20,),
                        Positioned(child: Container(width: 200,height: 200,color: Color.fromARGB(255, 227, 8, 8),),left:60,top: 120,)

           , Positioned(child: Container(width: 200,height: 200,color: Color.fromARGB(255, 229, 255, 0),),left: 100,top: 220,)

          ],
        ),
      ),
    );
  }
}
// Screens for the different bottom navigation items
class fourth extends StatelessWidget {
  const fourth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arraynames =["Pratham","bhavin","bhavin","Popat","bhavin","Popat","Rudra","Pratham","bhavin","Popat","Rudra","Pratham","bhavin","Popat","Rudra","Pratham","bhavin","Popat","Rudra","Pratham","bhavin","Popat""Popat","Rudra","Pratham","bhavin","Popat","Rudra","Pratham","bhavin","Popat","Rudra","Pratham","bhavin","Popat","Rudra","Pratham","bhavin","Popat","Rudra","Pratham","bhavin","Popat","Rudra","Pratham","bhavin","Popat","Rudra"];
    return Scaffold(
      body: ListView.builder(scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
        return Text(arraynames[index]);
      }),itemCount:20 
    ));
  }
}