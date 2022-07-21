import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:login_signup_ui/signup_page.dart';

void main()=>runApp(LoginUI());

class LoginUI extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    debugShowCheckedModeBanner:false,
        routes: <String,WidgetBuilder>{
      '/signup':(_)=>MySignUpUI(),
        },
        home:MyLoginUI(),
    );
  }

}
class MyLoginUI extends StatefulWidget{
  _MyLoginFormState createState()=> _MyLoginFormState();
}
class _MyLoginFormState extends State<MyLoginUI>{
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
            SizedBox(height: 20,),
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
                        'LOGIN',
style: TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
),
                      ),
                    ),
                  ),
                ),
              ),
            SizedBox(width: 5,),
            InkWell(
              onTap: (){
                Navigator.of(context).pushNamed('/signup');
              },
              child: Center(
                child: Text('Register',
                  style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,decoration: TextDecoration.underline
                  ,fontSize: 26,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),

            Container(

              height: 40.0,
              width: MediaQuery.of(context).size.width,
              // margin: EdgeInsets.all(5),
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Icon(Icons.wb_twilight),

                    ),

                    SizedBox(width: 10,),
                    Center(
                      child:Text('Login with Facebook'),
                    ),
                  ],
                ),
              ),



            ),
SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New to Spotify ?',
                  // style: TextStyle(
                  //  
                  // ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
