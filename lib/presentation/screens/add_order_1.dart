import 'package:first_task_samaan_app/components/reuseable_container.dart';
import 'package:first_task_samaan_app/components/reuseable_text.dart';
import 'package:first_task_samaan_app/components/selected_saman_list.dart';
import 'package:first_task_samaan_app/presentation/screens/add_order_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../components/dropdown_textformfield.dart';
import '../../components/reuseable_textfield.dart';
import '../../constans/constants.dart';

class AddOrder1 extends StatefulWidget {
  const AddOrder1({Key? key}) : super(key: key);

  @override
  State<AddOrder1> createState() => _AddOrder1State();
}

class _AddOrder1State extends State<AddOrder1> {
  bool valuw = true;
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.selected,
        MaterialState.focused,
        MaterialState.pressed,
      };
      if (states.any(interactiveStates.contains)) {
        return const Color(0xFF6AFB92);
      }
      return Colors.white;
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF002500), Color(0xFF114B1F)])),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReuseableText(
                      text: "حسن گلاس",
                      color: const Color(0xFF6AFB92),
                    ),
                    ReuseableText(
                      text: "00000",
                      color: const Color(0xFF6AFB92),
                    ),
                    ReuseableText(
                      text: "عمیر اقبال",
                      color: const Color(0xFF6AFB92),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Color(0xFF6AFB92),
                height: 2,
                thickness: 1.5,
                endIndent: 26,
                indent: 26,
              ),
              ReuseableTextField(
                text: "نام",
              ),
              ReuseableTextField(
                text: "فون نمبر",
              ),

              ReuseableTextField(
                text: "  تک ",
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CupertinoSwitch(
                        thumbColor: Colors.black,
                        value: valuw,
                        activeColor: const Color(0xFF6AFB92),
                        onChanged: (bool value) {
                          setState(() {
                            valuw = !valuw;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ReuseableText(text: "مقررہ قیمت", color: const Color(0xFF6AFB92)),
                  ],
                ),

              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ReuseableText(
                    text: "گاڑی کی قسم      ",
                    color: const Color(0xFF6AFB92),
                  ),
                  ReuseableText(
                    text: "دکان کے پیسے ",
                    color: const Color(0xFF6AFB92),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const TextFieldWithDropdown(text: ""),
                  Container(
                    width: 170,
                    height: 45,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF6AFB92),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFieldWithDropdown(text: "کب تک"),
                  TextFieldWithDropdown(text: "کہاں تک"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Center(
                        child: Text(
                      "سامان",
                      style: kSamanTextStyle,
                    )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const AddOrder2()));
                    },
                    child: ReuseableContainer(
                      color: Colors.white,
                      text: "سامان داخل کریں",
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32.0, vertical: 5),
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 2,
                      child: Checkbox(
                        value: isChecked,
                        activeColor: const Color(0xFF6AFB92),
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        onChanged: (bool? newValue) {
                          setState(() {
                            isChecked = newValue!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ReuseableContainer(
                      color: const Color(0xFF6AFB92),
                      text: "",
                    ),
                  ],
                ),
              ),
              SelectedSamanList(text: "فریج ۔  اےسی ۔ ٹیبل-       کرسی 4-"),
              const SizedBox(
                height: 5,
              ),
              Container(
                  width: 160,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "آرڈر درج کریں",
                    style: kOrderTextStyle,
                  ))),
            ],
          ),
        ),
      ),
    );
  }
}
