import 'package:btcui/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Color> colors = [Colors.yellow,Colors.orangeAccent, CupertinoColors.activeGreen,Colors.deepPurpleAccent];
  List<IconData> icons = [Icons.play_lesson_outlined,Icons.account_balance_rounded,CupertinoIcons.alt,Icons.balance];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.lightGreen,
        title: Text("Hello, Richard"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications,size: 30,),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1.5),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total Earnings",style: bodyMedium,),
                            Text("0.613 BTC",style: bodyLarge,),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade300
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.show_chart,color: Colors.blue,),
                                  Text("6.23%",style: TextStyle(fontWeight: FontWeight.w500),)
                                ],
                              ),
                              Text("0.045 BTC",style: bodySmallGrey,)
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.only(left: 10,right:4,top: 2,bottom: 3),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1.5),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Row(
                        children: [
                          Expanded(child: Text("0v89937vbh"*3,style: bodyMedium,maxLines: 1,overflow: TextOverflow.ellipsis,),),
                          SizedBox(width: 10,),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepOrange,
                              border: Border.all(width: 1.2,color: Colors.black),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(1, 1),
                                ),
                              ]
                            ),
                            padding: EdgeInsets.all(8),
                            alignment: Alignment.center,
                            child: Icon(Icons.copy,size: 20,),
                          )
                        ],
                      )
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                  color: Colors.green.shade600,
                                  border: Border.all(width: 2),
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(2, 2),
                                    ),
                                  ]
                              ),
                              child: Column(
                                children: [
                                  Icon(Icons.bar_chart_sharp,size: 30,),
                                  Text("Start",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                                ],
                              )
                          ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  border: Border.all(width: 2),
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(2, 2),
                                    ),
                                  ]
                              ),
                              child: Column(
                                children: [
                                  Icon(Icons.backup_outlined,size: 30,),
                                  Text("Withdraw",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                                ],
                              )
                          ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple.shade300,
                                  border: Border.all(width: 2),
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(2, 2),
                                    ),
                                  ]
                              ),
                              child: Column(
                                children: [
                                  Icon(Icons.people_outline,size: 30,),
                                  Text("Friends",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                                ],
                              )
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                clipBehavior: Clip.hardEdge,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1,color: Colors.black),
                        color: Colors.grey.shade900.withAlpha(245),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Column(
                        children: [
                          Text("60 / 120 points",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                          Text("1:45:32 Left",style: TextStyle(color: Colors.yellow,fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(height: 15,),

                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: -20,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(
                            sigmaX: 8,
                            sigmaY: 8,
                          ),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurple.withAlpha(200),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.deepPurple.withAlpha(200),
                                  blurRadius: 12,
                                  spreadRadius: 1.5,
                                  offset: const Offset(2, 2),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 11,
                      right:11,
                      left: 11,
                      child: LinearProgressIndicator(
                        color: Colors.orangeAccent,
                        value: .8,
                        minHeight: 25,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1.5),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Recent Activity",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 10,)),
                              elevation: WidgetStatePropertyAll(0),
                              shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)))
                            ),
                            child: Row(
                              children: [
                                Text("Show all",style: bodySmallGrey,),
                                Icon(CupertinoIcons.right_chevron,color: Colors.black,)
                              ],
                            )
                          ),
                        )
                      ],
                    ),
                    ...List.generate(4, (index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: colors[index],
                                    border: Border.all(width: 2),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(icons[index],size: 30,)
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Received ${index+1}",style: bodyMediumBold,),
                                  Text("0.2${index+1} BTC",style: bodyMediumBold,),
                                ],
                              ),
                              Spacer(),
                              Text("${index+2} hours ago",style: bodySmallGrey,),
                            ],
                          ),
                          SizedBox(height: 10,),
                        ],
                      );
                    },)
                  ],
                ),
              ),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}





