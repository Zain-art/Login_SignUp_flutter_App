import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main()=>runApp(SignUpUI());

class SignUpUI extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:MySignUpUI(),
    );
  }

}
class MySignUpUI extends StatefulWidget{
  _MySignUpFormState createState()=> _MySignUpFormState();
}
class _MySignUpFormState extends State<MySignUpUI>{
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 110, 0.0, 0.0),
                    child: Text(
                      'Hello',
                      style: TextStyle(
                        fontSize: 80,fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 175, 0.0, 0.0),
                    child: Text(
                      'There',
                      style: TextStyle(
                        fontSize: 80,fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(220.0, 175, 0.0, 0.0),
                    child: Text(
                      '.',
                      style: TextStyle(
                        fontSize: 80,fontWeight: FontWeight.bold,color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),

            ),
            Container(
              padding: EdgeInsets.only(top: 5,left: 20,right: 20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText:'Email',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurpleAccent,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2,color: Colors.pink),
                      ),
                      // focusedBorder: UnderlineInputBorder(
                      //   borderSide: BorderSide(color:Colors.red),
                      // ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:BorderSide(width: 2,color: Colors.pink),
                      ),

                    ),
                  ),
                  SizedBox(height: 20,), TextField(
                    decoration: InputDecoration(
                      labelText:'Nick Name',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurpleAccent,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2,color: Colors.pink),
                      ),
                      // focusedBorder: UnderlineInputBorder(
                      //   borderSide: BorderSide(color:Colors.red),
                      // ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:BorderSide(width: 2,color: Colors.pink),
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(
                      labelText:'Password',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurpleAccent,
                      ),
                      // focusedBorder: UnderlineInputBorder(
                      //   borderSide: BorderSide(color:Colors.red),
                      // ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2,color: Colors.pink),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:BorderSide(width: 2,color: Colors.pink),
                      ),

                    ),
                    obscureText: true,
                  ),

                ],
              ),
            ),
            Container(
              alignment: Alignment(1.0,0),
              padding: EdgeInsets.only(top: 15,left: 0,right: 20),
              child: InkWell(
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),

                ),

              ),

            ),
            SizedBox(height: 5,),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(20),
              child: Material(borderRadius: BorderRadius.circular(20),
                shadowColor: Colors.greenAccent,
                color:Colors.green,
                elevation: 7,
                child: GestureDetector(
                  onTap: (){},
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 5,),
    Center(
    child:ElevatedButton.icon(
    icon:Icon(Icons.arrow_back),
    label: Text('Go Back'),
    onPressed: () {
    Navigator.of(context).pop();
    },
    ),
    ),
            // Container(
            //
            //   height: 40.0,
            //   width: MediaQuery.of(context).size.width,
            //   // margin: EdgeInsets.all(5),
            //   color: Colors.transparent,
            //   child: Container(
            //     decoration: BoxDecoration(
            //         border: Border.all(
            //           color: Colors.black,
            //           style: BorderStyle.solid,
            //           width: 1.0,
            //         ),
            //         color: Colors.transparent,
            //         borderRadius: BorderRadius.circular(20)
            //     ),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Center(
            //           child: Icon(Icons.wb_twilight),
            //
            //         ),
            //         SizedBox(width: 10,),
            //
            //
            //       ],
            //     ),
            //   ),




            // SizedBox(height: 15.0,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       'New to Spotify ?',
            //       // style: TextStyle(
            //       //
            //       // ),
            //     ),
            //     SizedBox(width: 5,),
            //     InkWell(
            //       onTap: (){},
            //       child: Text('Register',
            //         style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
            //       ),
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
