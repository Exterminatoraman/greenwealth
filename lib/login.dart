import 'package:flutter/material.dart';
import 'package:greenwealth/home.dart';


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
              color: Colors.white,
            ),
            child:SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_outlined,color: Colors.white,size: 30,)),
                      SizedBox(width: 130,),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                          color:Colors.grey[300],
                          borderRadius:BorderRadius.circular(20),
              
                        ),
                        width: 400,
                        height: 60,
                        child: Center(child: Text("Continue with Google",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),))
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
              
              
                        width: 400,
                        height: 60,
                        child:Center(child: Text("------------------------------------------ or------------------------------------------",style: TextStyle(color: Colors.black),))
              
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color:Colors.grey[200],
                        borderRadius:BorderRadius.circular(20),
              
                      ),
              
                      height: 60,
                      child: TextFormField(
              
                        decoration: InputDecoration(labelText: 'Enter your email',
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
                        color:Colors.grey[200],
                        borderRadius:BorderRadius.circular(20),
              
                      ),
              
                      height: 60,
                      child: TextFormField(
              
                        decoration: InputDecoration(labelText: 'Enter your password',
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
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Container(
                      height: 50,
                      width: 370,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  homepage()),);



                          },
                          child: Text("Login ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),))),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  TextButton(onPressed: (){}, child: Text("Forgot Password?",style: TextStyle(fontSize:15,color: Colors.black),)),
                  SizedBox(height: 50,),
                  Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  signup()),);


                  }, child: Text("Signup",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
                ],
              )
                ],),
            ))
    );

  }
}

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery. of(context). size. height,
            width: MediaQuery. of(context). size. width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child:SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_outlined,color: Colors.white,size: 30,)),
                      SizedBox(width: 130,),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                          color:Colors.grey[300],
                          borderRadius:BorderRadius.circular(20),

                        ),
                        width: 400,
                        height: 60,
                        child: Center(child: Text("Continue with Google",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),))
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(


                        width: 400,
                        height: 60,
                        child:Center(child: Text("------------------------------------------ or------------------------------------------",style: TextStyle(color: Colors.black),))

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color:Colors.grey[200],
                        borderRadius:BorderRadius.circular(20),

                      ),

                      height: 60,
                      child: TextFormField(

                        decoration: InputDecoration(labelText: 'Enter your email',

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
                        color:Colors.grey[200],
                        borderRadius:BorderRadius.circular(20),

                      ),

                      height: 60,
                      child: TextFormField(

                        decoration: InputDecoration(labelText: 'Enter your password',

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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color:Colors.grey[200],
                        borderRadius:BorderRadius.circular(20),

                      ),

                      height: 60,
                      child: TextFormField(

                        decoration: InputDecoration(labelText: 'Enter your Full name',

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
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Container(
                      height: 50,
                      width: 370,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: TextButton(
                          onPressed: (){


                          },
                          child: Text("Signup ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),))),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  SizedBox(height: 50,),
                  Divider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Signin",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
                    ],
                  )
                ],),
            ))
    );
  }
}
