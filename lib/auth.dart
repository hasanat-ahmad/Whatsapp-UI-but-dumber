import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_ui/home_screen.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Phone number"),
        backgroundColor: Color(0xffD1D1D6),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Center(
              //   child: Text("Phone number",
              //   style: TextStyle(
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold
              //   ),
              //   ),
              // ),
              SizedBox(
                height: 48,
              ),
              Text("Please confirm your country code and \nenter your country code",
              textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 48,
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Pakistan", textAlign: TextAlign.left, style: TextStyle(fontSize: 17, color: Color(0xff007AFF)),)),
                  Row(
                    children: [
                      Text("+92 ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                            hintText: "phone number",
                            // border: InputBorder.none
                            ),
                            keyboardType: TextInputType.numberWithOptions(),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(10),
                            ],
                            
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 200,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffD1D1D6),
                    ),
                    onPressed: (
                    (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                    }
                  ), child: Align(
                    alignment: Alignment.center,
                    child: Text("Next",)
                    )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}