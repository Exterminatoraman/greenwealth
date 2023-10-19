import 'package:blooddonation/login.dart';
import 'package:flutter/material.dart';
import 'Signup.dart';
import 'main.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
      height: MediaQuery. of(context). size. height,
      width: MediaQuery. of(context). size. width,
      decoration: BoxDecoration(
        color: Color(0xFFF52646),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/Drop 2.png"),
          SizedBox(
            height: 10,
          ),
          Text("PULSE",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white),),

          SizedBox(height: 60,),
          Container(
            width: 250,
            child: Center(
              child: Flexible(

              child: Text("Donate to, receive from, run campaigns and explore bloodbanks & audience.",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
              ,
        ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Container(
              width: 400,
              height: 50,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Center(
                child: TextButton(
                  onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) =>  onboarding()),);},
                  child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0.06,
                      ),
                    ),
                ),
              ),
              ),
            ),


        ],

      ),

    ),);
  }
}

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        height: MediaQuery. of(context). size. height,
        width: MediaQuery. of(context). size. width,
        decoration: BoxDecoration(
          color: Color(0xFFF52646),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/Drop 2.png"),
            SizedBox(
              height: 10,
            ),
            Text("PULSE",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white),),

            SizedBox(height: 60,),
            Container(
              width: 250,
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Container(
                width: 400,
                height: 50,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: TextButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>  login()),);},
                    child: Text(
                      'Sign-in',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0.06,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Container(
                width: 400,
                height: 50,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: TextButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>  signup()),);},
                    child: Text(
                      'Create an account',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0.06,
                      ),
                    ),
                  ),
                ),
              ),
            ),


          ],

        ),

      ),);
  }
}
