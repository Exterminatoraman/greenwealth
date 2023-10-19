import 'package:blooddonation/home.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
String names="";
String email="";
String phone="";
String password="";

class signup extends StatefulWidget {

  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool last=false;
  PageController controlscreen=PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery. of(context). size. height,

        child: SingleChildScrollView(
          child: Stack(
              alignment: Alignment(0, 0.85),
            children: [Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFF52646)
              ),
              child: PageView(
                controller: controlscreen,
                onPageChanged: (index){
                  setState(() {
                    last=(index==1);
                  });
                },

                children: [
                  signup1(),
                  signup2(),



                    ],
                  ),


              ),


              Positioned(
                bottom: 150,
                child: Container(

                  child: SmoothPageIndicator(controller: controlscreen, count: 2,
                    effect: const WormEffect(
                      dotColor:Colors.grey,

                    activeDotColor: Colors.white,
                      dotHeight: 6,
                      dotWidth: 6,
                      type: WormType.thinUnderground,
                    ),
                    onDotClicked: (index){
                      controlscreen.jumpToPage(index);
                    },
                  ),
                ),
              ),
              last? Align(
                alignment: Alignment(0, 0.85),
                child: GestureDetector(
                  onTap: (){controlscreen.nextPage(duration: Duration(milliseconds: 100), curve: Curves.easeIn);
                  },
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
              ):Align(
                alignment: Alignment(0, 0.85),
                child: GestureDetector(
                  onTap: (){controlscreen.nextPage(duration: Duration(milliseconds: 100), curve: Curves.easeIn);
                  },
                  child: Container(
                    height: 50,
                    width: 370,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Text("next",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                  ),
                ),
              )
    ]
          ),
        ),
      )
    );


  }
}
class signup1 extends StatefulWidget {
  const signup1({super.key});

  @override
  State<signup1> createState() => _signup1State();
}

class _signup1State extends State<signup1> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: Text("Create a new account",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius:BorderRadius.circular(20),

            ),

            height: 60,
            child: TextFormField(

              decoration: InputDecoration(labelText: 'name',
                prefixIcon: Icon(Icons.account_circle_outlined),

                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(

                        Radius.circular(20.0))
                ),),
              validator: (input) => input!.trim().isEmpty
                  ? 'Please enter a valid name'
                  : null,
              onSaved: (input) => names = input!,
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

              decoration: InputDecoration(labelText: 'email',
                prefixIcon: Icon(Icons.alternate_email_outlined),

                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(

                        Radius.circular(20.0))
                ),),
              validator: (input) => input!.trim().isEmpty
                  ? 'Please enter a valid name'
                  : null,
              onSaved: (input) => email = input!,
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

              decoration: InputDecoration(labelText: 'phone',
                prefixIcon: Icon(Icons.phone),

                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(

                        Radius.circular(20.0))
                ),),
              validator: (input) => input!.trim().isEmpty
                  ? 'Please enter a valid name'
                  : null,
              onSaved: (input) => phone = input!,
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

              decoration: InputDecoration(labelText: 'password',
                prefixIcon: Icon(Icons.key),

                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(

                        Radius.circular(20.0))
                ),),
              validator: (input) => input!.trim().isEmpty
                  ? 'Please enter a valid name'
                  : null,
              onSaved: (input) => password = input!,
            ),
          ),
        ),


      ],
    );
  }
}
class signup2 extends StatefulWidget {
  const signup2({super.key});

  @override
  State<signup2> createState() => _signup2State();
}

class _signup2State extends State<signup2> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: Text("Let’s gather a few details about you",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius:BorderRadius.circular(20),

            ),

            height: 60,
            child: TextFormField(

              decoration: InputDecoration(labelText: 'Blood Group',
                prefixIcon: Icon(Icons.bloodtype),

                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(

                        Radius.circular(20.0))
                ),),
              validator: (input) => input!.trim().isEmpty
                  ? 'Please enter a valid name'
                  : null,
              onSaved: (input) => names = input!,
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

              decoration: InputDecoration(labelText: 'gender',
                prefixIcon: Icon(Icons.male),

                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(

                        Radius.circular(20.0))
                ),),
              validator: (input) => input!.trim().isEmpty
                  ? 'Please enter a valid name'
                  : null,
              onSaved: (input) => email = input!,
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

              decoration: InputDecoration(labelText: 'age',
                prefixIcon: Icon(Icons.tag_faces_sharp),

                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(

                        Radius.circular(20.0))
                ),),
              validator: (input) => input!.trim().isEmpty
                  ? 'Please enter a valid name'
                  : null,
              onSaved: (input) => phone = input!,
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

              decoration: InputDecoration(labelText: 'location',
                prefixIcon: Icon(Icons.pin_drop),

                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(

                        Radius.circular(20.0))
                ),),
              validator: (input) => input!.trim().isEmpty
                  ? 'Please enter a valid name'
                  : null,
              onSaved: (input) => password = input!,
            ),
          ),
        ),


      ],
    );

  }
}