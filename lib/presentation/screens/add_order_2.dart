import 'package:first_task_samaan_app/components/saman_container.dart';
import 'package:first_task_samaan_app/constans/constants.dart';
import 'package:first_task_samaan_app/presentation/screens/add_order_1.dart';
import 'package:flutter/material.dart';

import '../../components/saman_list_container.dart';
import '../../components/reuseable_text.dart';

class AddOrder2 extends StatefulWidget {
  const AddOrder2({Key? key}) : super(key: key);

  @override
  State<AddOrder2> createState() => _AddOrder2State();
}

class _AddOrder2State extends State<AddOrder2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReuseableText(
                    text: "حسن گلاس",
                    color: Color(0xFF002500),
                  ),
                  ReuseableText(
                    text: "00000",
                    color: Color(0xFF002500),
                  ),
                  ReuseableText(
                    text: "عمیر اقبال",
                    color: Color(0xFF002500),
                  ),
                ],
              ),
            ),
            Divider(
              color: Color(0xFF002500),
              height: 2,
              thickness: 1.5,
              endIndent: 26,
              indent: 26,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SamanContainer(image: "images/1.jpg"),
                  SamanContainer(image: "images/2.jpg"),
                  SamanContainer(image: "images/3.jpg"),
                  SamanContainer(image: "images/4.jpg"),
                ],
              ),
            ),

             SizedBox(height: 30,),
            SamanListContainer(
              text: "	منی ریفریجریٹر",
              onTapMinus: (){},
              onTapPlus: (){},


            ),
            SamanListContainer(
              text: "		ریفریجریٹر",
              onTapMinus: (){},
              onTapPlus: (){},

            ),
            SamanListContainer(
              text: "		واشنگ مشین",
              onTapMinus: (){},
              onTapPlus: (){},

            ),
            SamanListContainer(
              text: "		واشنگ مشین ڈرائر کے ساتھ",
              onTapMinus: (){},
              onTapPlus: (){},

            ),
            SamanListContainer(
              text: "		اے سی",
              onTapMinus: (){},
              onTapPlus: (){},

            ),

            SamanListContainer(
              text: "		ایل سی  ڈی ٹی وی",
              onTapMinus: (){},
              onTapPlus: (){},

            ),
            SamanListContainer(
              text: "		پنکھا",
              onTapMinus: (){},
              onTapPlus: (){},

            ),
            SamanListContainer(
              text: "	منی ریفریجریٹر",
              onTapMinus: (){},
              onTapPlus: (){},

            ),
            SamanListContainer(text: "چولہا",
              onTapMinus: (){},
                onTapPlus: (){},
            ),


            Container(
              width: 300,
              height: 100,
              decoration: ShapeDecoration(
                color: Color(0xFF114B1F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
             SizedBox(height: 5.0,),
            InkWell(
              onTap: (){
                Navigator.pop(context);
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> AddOrder1()));
              },
              child: Container(
                width: 120,
                height: 50,
                decoration: ShapeDecoration(
                  color: Color(0xFF002500),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Center(
                  child: Text(
                    "واپس",
                    style: kTextStyle
                  ),
                ),
              ),
            ),

      ]
      ),
        )
      ),
    );
  }
}
