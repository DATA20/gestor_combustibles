
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/FormCard.dart';


class LoginPage extends StatefulWidget {
  static String routName='/loginPage';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      
      designSize:const Size(750,1334)
      
      );
    return Scaffold(
      
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              FormCard(),
                  SizedBox(height: ScreenUtil().setHeight(40)),
                  
              
          
             
            ],
          ),
        ),
      ),
    );
  }
}




