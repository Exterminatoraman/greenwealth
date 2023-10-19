
import 'package:flutter/material.dart';
String name="enter the name";
String email="Enter the email";
String phonenumber="enter your phonenumber";
String age="enter your age";
String gender="enter your gender";
String screening="";

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> with AutomaticKeepAliveClientMixin {
  TextEditingController name1 = TextEditingController();
  TextEditingController email1 = TextEditingController();
  TextEditingController phonenumber1 = TextEditingController();
  TextEditingController Age1 = TextEditingController();
  TextEditingController gender1 = TextEditingController();
  TextEditingController screening1 = TextEditingController();
  bool isEditable=false;
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Container(
          height: MediaQuery. of(context). size. height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children:[ Container(
              height: 120, // Adjust the height as needed
              decoration: const BoxDecoration(
                color: Color(0xFFFFB0BC),// Color of the semi-oval shape
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(350, 200), // Adjust the values for the ellipse shape
                ),
              ),),

                Row(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){setState(() => isEditable = !isEditable,);}, icon: const Icon(Icons.edit)),
                    const SizedBox(
                      width: 120,
                    ),
                    const CircleAvatar(backgroundImage: AssetImage("images/profile_pic.png"),radius: 40,),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF52646)
                      ),
                      child: const Center(child: Text("O+",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18) ,)),
                    )
                  ],
                )

              ],
            ),
              const Padding(
                padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                child: Text("Name",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                child: Container(
                  decoration: BoxDecoration(
                    color:Colors.pink[50],
                    borderRadius:BorderRadius.circular(20),

                  ),
                  width: 400,

                  height: 50,
                  child: !isEditable
                      ? Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 10),
                        child: Text(name,style: const TextStyle(fontWeight: FontWeight.w400,
                        ),),
                      )
                      :TextFormField(
                    controller: name1,

                    decoration: const InputDecoration(labelText: 'enter',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),)
                      ),),
                    validator: (input) => input!.trim().isEmpty
                        ? 'Please enter a valid name'
                        : null,
                      onChanged: (String text) {
                        setState(() {
                          name = text;
                        });

    }

                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                child: Text("Email",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                child: Container(
                  decoration: BoxDecoration(
                    color:Colors.pink[50],
                    borderRadius:BorderRadius.circular(15),

                  ),
                  width: 400,
                  height: 50,
                  child:!isEditable
                      ? Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 0, 10),
                    child: Text(email,style: const TextStyle(fontWeight: FontWeight.w400,
                    ),),
                  ): TextField(
                    controller: email1,

                    decoration: const InputDecoration(labelText: 'enter',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),)
                      ),),
                    onChanged: (String text) {
                      setState(() {
                        email = text;
                      });
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                child: Text("Phone number",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                child: Container(
                  decoration: BoxDecoration(
                    color:Colors.pink[50],
                    borderRadius:BorderRadius.circular(15),

                  ),
                  width: 400,
                  height: 50,
                  child: !isEditable?Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 0, 10),
                    child: Text(phonenumber,style: const TextStyle(fontWeight: FontWeight.w400,
                    ),),
                  ):TextFormField(
                    controller: phonenumber1,

                    decoration: const InputDecoration(labelText: 'enter',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),)
                      ),),
                    validator: (input) => input!.trim().isEmpty
                        ? 'Please enter a valid name'
                        : null,
    onChanged: (String text) {
    setState(() {
    phonenumber = text;
    },);}
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                        child: Text("Age",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.pink[50],
                            borderRadius:BorderRadius.circular(15),

                          ),
                          width: 160,

                          height: 50,
                          child: !isEditable?Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 0, 10),
                            child: Text(age,style: const TextStyle(fontWeight: FontWeight.w400,
                            ),),
                          ):TextFormField(
                            controller: Age1,

                            decoration: const InputDecoration(labelText: 'enter',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),)
                              ),),
                            validator: (input) => input!.trim().isEmpty
                                ? 'Please enter a valid name'
                                : null,
                              onChanged: (String text) {
                                setState(() {
                                  age = text;
                                },);}
                          ),
                        ),
                      ),

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Text("Gender",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.pink[50],
                            borderRadius:BorderRadius.circular(15),

                          ),
                          width: 170,

                          height: 50,
                          child: !isEditable?Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 0, 10),
                            child: Text(gender,style: const TextStyle(fontWeight: FontWeight.w400,
                            ),),
                          ):TextFormField(
                            controller: gender1,

                            decoration: const InputDecoration(labelText: 'enter',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),)
                              ),),
                            validator: (input) => input!.trim().isEmpty
                                ? 'Please enter a valid name'
                                : null,
                              onChanged: (String text) {
                                setState(() {
                                  gender = text;
                                },);}
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                child: Text("Screening Profile",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                child: Container(
                  decoration: BoxDecoration(
                    color:Colors.pink[50],
                    borderRadius:BorderRadius.circular(15),

                  ),
                  width: 400,
                  height: 50,
                  child: !isEditable?Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 0, 10),
                    child: Text(screening,style: const TextStyle(fontWeight: FontWeight.w400,
                    ),),
                  ):TextFormField(

                    decoration: const InputDecoration(labelText: 'enter',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),)
                      ),),
                    validator: (input) => input!.trim().isEmpty
                        ? 'Please enter a valid name'
                        : null,
                      onChanged: (String text) {
                        setState(() {
                          screening = text;
                        },);}                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Container(
                  width: 400,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF52646),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child:isEditable?TextButton(onPressed: (){
                    setState(() {
                      isEditable=!isEditable;
                    });
                    }, child: const Text("SUBMIT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)): const Center(
                    child: Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0.06,
                      ),
                    ),
                  ),
                ),
              )

              // Add your content here
              // ...
            ],
          ),
        ),
      );
  }

  @override
  bool get wantKeepAlive => true;
}
