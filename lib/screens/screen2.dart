import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_task/screens/screen3.dart';

class ScreenTwo extends StatefulWidget {
  static const String routeName="two";
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("الطلبات",style: TextStyle(color: Colors.black),),

      ),
      bottomNavigationBar: BottomNavigationBar(

        items: const [


    BottomNavigationBarItem(icon: Icon(Icons.home_filled),label:"" ),
    BottomNavigationBarItem(icon:Icon(Icons.calendar_today_sharp) ,label: ""),
    BottomNavigationBarItem(icon:Icon(Icons.chat),label: ""),
    BottomNavigationBarItem(icon:Icon(Icons.more_horiz_sharp) ,label:"" ,),

    ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blue,
      ),

      body: SafeArea(
        child: DefaultTabController(
          length: 6,
          child: Column(
            children: [
              Container(
                height: 60,
                color: Colors.white,
                padding: EdgeInsets.only(left: 10, bottom: 20, right: 10),
                child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black,
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text('الطلبات')),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text('الجارية')),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text('المنتهية')),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text('الملغاة')),
                      ),
                    ),


                  ],
                ),
              ),

              Container(
                //child: Container(
                height: 200,
                //color: Colors.blue,
                child: TabBarView(
                  children: [
                    Card(
                      color: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("ابو فهد عبد العزيز"),

                              ],
                            )
                          ],
                        ),
                      ),

                    ),
                    Text('الجارية'),
                    Text('المنتهية'),
                    Text('الملغاة'),

                  ],
                ),
              ),

              MaterialButton(
                  onPressed: (){Navigator.pushNamed(context, ScreenThree.routName);},
                child: Icon(Icons.arrow_forward),
              )



            ],
          ),
        ),
      ),
    );

  }
}
