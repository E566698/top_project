import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../Resource/color_manager/color_manager.dart';
import '../../component/color.dart';
class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var formkey=GlobalKey<FormState>();
    var emailController=TextEditingController();
    var passController=TextEditingController();
   return Scaffold(
     appBar: AppBar(),
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.all(20),
         child: Form(
           key: formkey,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text('Log In',
                 style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 30,
                     color: Colors.black

                 ),),
               SizedBox(height: 10,),
               Text('Welcome back! Please enter your details',
                 style: TextStyle(
                     fontSize: 15,
                     color: Colors.grey

                 ),),
               SizedBox(height: 10,),
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
               ),
               SizedBox(height: 20,),
               TextFormField(
                 controller: passController,
                 keyboardType: TextInputType.visiblePassword,
                 obscureText: true,
                 decoration: InputDecoration(
                     prefixIcon: Icon(
                       Icons.lock_outline,
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
                     hintText: 'Password'),
               ),
               SizedBox(height: 10,),
               Row(
                 // mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   IconButton(onPressed:(){},
                       icon:Icon(Icons.crop_square_outlined,color: Colors.grey,)

                   ),
                   Text('Remember ',
                     style: TextStyle(
                       fontSize: 13,
                       color: Colors.black,

                     ),),


                 ],
               ),
               SizedBox(height: 25,),
               Center(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     TextButton(onPressed: (){},
                         child:Text('Forget password?',
                           style: TextStyle(
                               color:defaultColor
                           ),
                         ))
                   ],
                 ),
               ),
               Container(
                   width:double.infinity,
                   height: 60,

                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(35),
                     color: defaultColor,

                   ),
                   child: Center(
                     child: TextButton(
                       onPressed: (){ },
                       child:Text  ('Sign in',
                         style: TextStyle(
                             color: Colors.white,
                             fontSize: 20
                         ),
                       ),),

                   )
               ),
               SizedBox(height: 5,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Text('Create an account',
                     style: TextStyle(
                       fontSize: 15,
                       color: Colors.blueGrey,

                     ),),
                   SizedBox(width: 10,),
                   TextButton(onPressed: (){

                   },
                       child:Text('Sign up',
                         style: TextStyle(
                           color:defaultColor,
                         ),
                       ))
                 ],
               ),
               SizedBox(height: 5,),
             ],
           ),
         ),
       ),
     ),
   );
  }

}