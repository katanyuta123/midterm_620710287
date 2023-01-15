import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  Calender(),
    );
  }
}

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {

  var month = '';
  var num = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const SizedBox(width: 10),
            Text("←   CALENDER 2023 "),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        //ตรงนี้อย่าลืมช่องใส่เลขจะได้ไม่ชิดขอบเกิ๊นไป
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //ทำให้อยู่ตรงกลางสวยๆ มีแบ spaceBetween,อราวด์ก็ //หรือจะแรปวิทเซ็นเตอร์
          children: [
            Expanded(  //กรอบบน
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white70,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            children: [
                              SizedBox(width: 10),
                              Expanded(flex:1, child: ElevatedButton(onPressed: (){
                                //  todo:
                                setState((){
                                  month = 'JANUARY';
                                  num = '1';
                                });
                              }, child: Text('JANUARY'))),

                               SizedBox(width: 10),
                              Expanded(flex:1, child: ElevatedButton(onPressed: (){
                                //  todo:
                                setState((){
                                  month = 'FEBRUARY';
                                  num = '2';
                                });
                              }, child: Text('FEBRUARY'))),
                               SizedBox(width: 10),
                              Expanded(flex:1, child: ElevatedButton(onPressed: (){
                                //  todo:
                                setState((){
                                  month = 'MARCH';
                                  num = '3';
                                });
                              }, child: Text('MARCH'))),
                              SizedBox(width: 10),

                            ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Expanded(flex:1, child: ElevatedButton(onPressed: (){

                              //  todo:
                              setState((){
                                month = 'APRIL';
                                num = '4';
                              });
                            }, child: Text('APRIL'))),
                            SizedBox(width: 10),
                            Expanded(flex:1, child: ElevatedButton(onPressed: (){
                              //  todo:
                              setState((){
                                month = 'MAY';
                                num = '5';
                              });
                            }, child: Text('MAY'))),
                            SizedBox(width: 10),
                            Expanded(flex:1, child: ElevatedButton(onPressed: (){
                              //  todo:
                              setState((){
                                month = 'JUNE';
                                num = '6';
                              });
                            }, child: Text('JUNE'))),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          SizedBox(width: 10),
                          Expanded(flex:1, child: ElevatedButton(onPressed: (){
                            //  todo:
                            setState((){
                              month = 'JULY';
                              num = '7';
                            });
                          }, child: Text('JULY'))),
                          SizedBox(width: 10),
                          Expanded(flex:1, child: ElevatedButton(onPressed: (){
                            //  todo:
                            setState((){
                              month = 'AUGUST';
                              num = '8';
                            });
                          }, child: Text('AUGUST'))),
                          SizedBox(width: 10),
                          Expanded(flex:1, child: ElevatedButton(onPressed: (){
                            //  todo:
                            setState((){
                              month = 'SEPTEMBER';
                              num = '9';
                            });
                          }, child: Text('SEPTEMBER'))),
                          SizedBox(width: 10),
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          SizedBox(width: 10),
                          Expanded(flex:1, child: ElevatedButton(onPressed: (){
                            //  todo:
                            setState((){
                              month = 'OCTOBER';
                              num = '10';
                            });
                          }, child: Text('OCTOBER'))),
                          SizedBox(width: 10),
                          Expanded(flex:1, child: ElevatedButton(onPressed: (){
                            //  todo:
                            setState((){
                              month = 'NOVEMBER';
                              num = '11';
                            });
                          }, child: Text('NOVEMBER'))),
                          SizedBox(width: 10),
                          Expanded(flex:1, child: ElevatedButton(onPressed: (){
                            //  todo:
                            setState((){
                              month = 'DECEMBER';
                              num = '12';
                            });
                          }, child: Text('DECEMBER'))),
                          SizedBox(width: 10),
            ],),
                      ),
                     // Text(month),
                    ],
                  ),

                ),
              ),
            ),

            Expanded( //กรอบล่าง
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white70,
                    child: Center(
                      child: Row(
                        children: [
                          Expanded(child: Text(month,textAlign: TextAlign.left, )),

                          Text(num,textAlign: TextAlign.center,),

                        ],
                      ),

                    ),
                  ),
                )),

          ],
        ),
      ),
    );
  }
}