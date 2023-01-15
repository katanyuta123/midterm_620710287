//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
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
        padding: const EdgeInsets.all(60.0),
        //ตรงนี้อย่าลืมช่องใส่เลขจะได้ไม่ชิดขอบเกิ๊นไป
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //ทำให้อยู่ตรงกลางสวยๆ มีแบ spaceBetween,อราวด์ก็ //หรือจะแรปวิทเซ็นเตอร์
          children: [
            Expanded(
              child: Container(
                color: Colors.amber,
                child: Center(

                  child: Text(
                    'Guess the Love between 1 and 100',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.pink,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                   // textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
                child: Container(
                  color: Colors.purpleAccent,
                  child: Column(
                    //column อันล่าวงถ้าอยากให้อยู่ตรงกลางให้เซต กรณีรอบปุ่มมี Padding ก็จะมีความไม่กลางมากอยากให้แป๊ปก็ลบ Padding
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        //.all จะเป็นการกำหนดรอบด้าน .symmetric กำหนดได้รอบด้วยตัวเอง
                        child: OutlinedButton(
                          onPressed: () {
                            //  โค้ดว่าให้ทำอะไร
                          },
                          child: Text('GUESS'),
                        ),
                      )
                    ],
                  ),
                )),

          ],
        ),
      ),
    );
  }
}
