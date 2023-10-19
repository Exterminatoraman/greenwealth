import 'package:flutter/material.dart';

import 'home.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
          height: MediaQuery. of(context). size. height,
          width: MediaQuery. of(context). size. width,
          decoration: BoxDecoration(
            color: Color(0xFFF52646),
          ),
        child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_outlined,color: Colors.white,size: 30,)),
            SizedBox(width: 130,),
            Image.asset("images/Drop 2.png",height: 50,),
          ],

        ),
        SizedBox(height: 80,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Login to \nyour account",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius:BorderRadius.circular(20),

            ),
            width: 400,
            height: 60,
            child: Center(child: Text("Continue with Google"))
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(


            width: 400,
            height: 60,
            child:Center(child: Text("------------------------------------------ or------------------------------------------",style: TextStyle(color: Colors.white),))
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius:BorderRadius.circular(20),

            ),

            height: 60,
            child: TextFormField(

              decoration: InputDecoration(labelText: 'email id',
                prefixIcon: Icon(Icons.mail_outline_outlined),

                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(

                        Radius.circular(20.0))
                ),),
              validator: (input) => input!.trim().isEmpty
                  ? 'Please enter a valid name'
                  : null,
          //    onSaved: (input) => phone = input!,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius:BorderRadius.circular(20),

            ),

            height: 60,
            child: TextFormField(

              decoration: InputDecoration(labelText: 'Password',
                prefixIcon: Icon(Icons.key),

                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(

                        Radius.circular(20.0))
                ),),
              validator: (input) => input!.trim().isEmpty
                  ? 'Please enter a valid name'
                  : null,
            //  onSaved: (input) => password = input!,
            ),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Container(
            height: 50,
            width: 370,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Center(child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  homescreen()),);

                },
                child: Text("continue ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),))),
          ),
        ),


      ],))
    );

  }
}
