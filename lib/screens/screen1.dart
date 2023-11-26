import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/screens/screen2.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ScreenOne extends StatefulWidget {
  static const String routeName="one";
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {


  final passwordController=TextEditingController();
  bool passToggle=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Container(
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 70),
    width: MediaQuery.of(context).size.width,
    child: SingleChildScrollView(
    child: Column(
    children:<Widget> [
    SizedBox(height: 120),
    Image.asset("assets/images/car.png",width: 150,height: 150),

    Text("تسجيل دخول"),
    SizedBox(height: 30,),
      IntlPhoneField(

        decoration: InputDecoration(
          labelText: 'Phone Number',
          border: OutlineInputBorder(
            borderSide: BorderSide(),
          ),
        ),
        initialCountryCode: 'IN',
        onChanged: (phone) {
          print(phone.completeNumber);
        },

      ),

    SizedBox(height: 30),
      TextFormField(
       
        obscureText: passToggle,
        controller: passwordController,
        decoration: InputDecoration(
          hintText: 'كلمة السر',
          prefixIcon: Icon(CupertinoIcons.lock),
          suffix: InkWell(
            onTap: (){
              setState(() {
                passToggle= !passToggle;
              });

            },
            child:Icon(passToggle ? Icons.visibility:Icons.visibility_off) ,
          )
        ),

      ),
      SizedBox(height: 5,),
      GestureDetector(
        onTap: (){},
          child: Text("هل نسيت كلمة المرور؟")

      ),
      SizedBox(height: 10,),
      MaterialButton(
          onPressed: (){Navigator.pushReplacementNamed(context, ScreenTwo.routeName);},

        child: Text("تسجيل الدخول",style: TextStyle(color: Colors.white),),
        color: Colors.blue,
      ),
      SizedBox(height: 30,),
      Row(
        children: [
          Text("ليس لديك حساب؟"),
          GestureDetector(
            onTap: (){},
            child: Text("سجل الان",style: TextStyle(color: Colors.blue),),
          )
        ],
      )
   ]
    ),
    )
      ),

    );
  }
}
