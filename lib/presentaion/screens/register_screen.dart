

import 'package:flutter/material.dart';

import '../../Resource/color_manager/color_manager.dart';

class Register extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var formkey=GlobalKey<FormState>();
    var nameController=TextEditingController();
    var emailController=TextEditingController();
    var passController=TextEditingController();
    var phoneController=TextEditingController();
    return Scaffold(
      appBar: AppBar(),
        body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(10),
    child: Form(
    key: formkey,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Image.asset(
        'assets/img/img.png',
        height: 150,
        width: 150,
      ),
    Text('Sign Up',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    color: Colors.black

    ),),
    SizedBox(height: 10,),
    Text('Welcome ! Please enter your details',
    style: TextStyle(
    fontSize: 15,
    color: Colors.grey

    ),),
    SizedBox(height: 20,),
    TextFormField(
    controller: nameController,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
    prefixIcon: Icon(
    Icons.account_circle_rounded,
    color: ColorManager.DarkBasiColor,
    ),
    border: OutlineInputBorder(
    // width: 0.0 produces a thin "hairline" border
    borderRadius: BorderRadius.all(Radius.circular(90.0)),
    borderSide: BorderSide.none,
    ),

    hintStyle: TextStyle(color: Colors.black,fontFamily: "WorkSansLight"),
    filled: true,
    fillColor: Colors.grey[20],
    hintText: 'Name',),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Please enter some text';
    }
    return null;
    },
    ),
    SizedBox(height: 20,),
    TextFormField(
    controller: emailController,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
    prefixIcon: Icon(
    Icons.email_outlined,
    color: ColorManager.DarkBasiColor,
    ),
    border: OutlineInputBorder(
    // width: 0.0 produces a thin "hairline" border
    borderRadius: BorderRadius.all(Radius.circular(90.0)),
    borderSide: BorderSide.none,
    ),

    hintStyle: TextStyle(color: Colors.black,fontFamily: "WorkSansLight"),
    filled: true,
    fillColor: Colors.grey[20],
    hintText: 'E-mail'),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Please enter some text';
    }
    return null;
    },
    ),
    SizedBox(height: 20,),
    TextFormField(
    controller: passController,
    keyboardType: TextInputType.visiblePassword,
    obscureText: true,
    decoration: InputDecoration(
    prefixIcon: Icon(
    Icons.lock_outline,
    color:ColorManager.DarkBasiColor,
    ),
    border: OutlineInputBorder(
    // width: 0.0 produces a thin "hairline" border
    borderRadius: BorderRadius.all(Radius.circular(90.0)),
    borderSide: BorderSide.none,
    ),

    hintStyle: TextStyle(color: Colors.black,fontFamily: "WorkSansLight"),
    filled: true,
    fillColor: Colors.grey[20],
    hintText: 'Password'),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Please enter some text';
    }
    return null;
    },
    ),
    SizedBox(height: 20,),
      TextFormField(
        controller: phoneController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.phone,
              color: ColorManager.DarkBasiColor,
            ),
            border: OutlineInputBorder(
              // width: 0.0 produces a thin "hairline" border
              borderRadius: BorderRadius.all(Radius.circular(90.0)),
              borderSide: BorderSide.none,
            ),

            hintStyle: TextStyle(color: Colors.black,fontFamily: "WorkSansLight"),
            filled: true,
            fillColor: Colors.grey[20],
            hintText: 'Phone'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
      SizedBox(height: 10,),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Row(
           children: [
             Text('Male',
               style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   color: Colors.black
               ),),
             SizedBox(width: 30,),
             IconButton(onPressed:(){},
                 icon:Icon(Icons.check_circle_outline,color: Colors.grey,)

             ),
           ],
          ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Female',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                SizedBox(width: 10,),
                IconButton(onPressed:(){

                },
                    icon:Icon(Icons.check_circle_outline,color: Colors.grey,)

                ),
              ],
            ),
          ],
        ),
        SizedBox(width: 15,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text('Patient',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                SizedBox(width: 10,),
                IconButton(onPressed:(){},
                    icon:Icon(Icons.check_circle_outline,color: Colors.grey,)

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Doctor',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                SizedBox(width: 20,),
                IconButton(onPressed:(){},
                    icon:Icon(Icons.check_circle_outline,color: Colors.grey,)

                ),
              ],
            ),
          ],
        ),



          ],
        ),
      SizedBox(height: 20,),
      Container(
          width:150,
          height: 50,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color:  ColorManager.BlueBasiColor.withOpacity(0.8),

          ),
          child: Center(
            child: TextButton(
              onPressed: (){
//
                if(  formkey.currentState!.validate()){

                  // ChestsignUpCubit.get(context).userRegister(
                  //     name: nameController.text,
                  //     email: emailController.text,
                  //     password: passController.text);
                }
              },
              child:Text  ('Next',
                style: TextStyle(
                    color: Colors.white,
                  fontSize: 20
                ),
              ),),

          )
      ),









    ],
    ),


    ),
    ),
        ),
    );

  }

}