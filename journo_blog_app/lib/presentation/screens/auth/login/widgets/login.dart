import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journo_blog_app/presentation/commmon_widgets/primary_button.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../core/constants/my_assets.dart';
import '../../../../../core/constants/my_colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        backgroundColor: MyColors.primaryColor,
        body:SafeArea(
      
          child: Column(
            children: [
              Center(
                      child: Image.asset(
                        MyAssets.mainLogo,
                        height: 42.h,
                        width: 139.w,
                      ),
                    ),
                    100.h.heightBox,
          
                    Container(
                      height:MediaQuery.sizeOf(context).height,
                       width:MediaQuery.sizeOf(context).height,
                       decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(36),
                          topRight: Radius.circular(36),
                        )
          
                       ),
                       child:Padding(
                         padding: const EdgeInsets.symmetric(horizontal:24),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            50.h.heightBox,
                          Text("Login", style:TextStyle(color: MyColors.primaryColor,
                          fontSize:18.sp, fontWeight:FontWeight.w700)) ,
                          48.h.heightBox,
                          Text("Email"),
                          8.h.heightBox,
                          const VxTextField(
                            fillColor: Colors.transparent,
                            borderColor: MyColors.primaryColor,
                            borderType: VxTextFieldBorderType.roundLine,
                            borderRadius: 10,
                            prefixIcon: Icon(Icons.email),
                          ),
      
                              20.h.heightBox,
                          Text("Password"),
                          8.h.heightBox,
                          const VxTextField(
                            obscureText: true,
                            isPassword: true,
                            fillColor: Colors.transparent,
                            borderColor: MyColors.primaryColor,
                            borderType: VxTextFieldBorderType.roundLine,
                            borderRadius: 10,
                            prefixIcon: Icon(Icons.lock),
                          ),
      
                          40.h.heightBox,
      
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width:220,
                                child: CheckboxListTile(
                                  contentPadding: EdgeInsets.zero,
                                  value: false, 
                                controlAffinity: ListTileControlAffinity.leading,
                                onChanged: (value) {}, title: "Rememer Me".text.make())),
                              "Forgot Password".text.size(14.sp).make()
                            ],
                          ),
                            40.h.heightBox,
      
                          PrimaryButton(
                            title:"Login",
                             onPressed:() {}
                              ),
                              
                          20.h.heightBox,
      
                              "Don't have and account".richText.size(14).semiBold
                              .color(MyColors.primaryColor,)
                              .withTextSpanChildren([
                                TextSpan(
                                  text: "Sign Up",
                                  style:TextStyle(fontWeight: FontWeight.w700),
                                )
      
                              ]).makeCentered(),
                                             ],
                         ),
                       )
                    )
            ],
          ),
        )
      
      ),
    );
  }
}