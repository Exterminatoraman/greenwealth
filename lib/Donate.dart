import 'package:blooddonation/Request.dart';
import 'package:blooddonation/maps.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
String hospital="";
List<String> icontext=["Find BloodBank","Open Request","Am i eligible?","How much?","Campaign","Guide"];
List<IconData> iconimage=[Icons.search,Icons.content_paste,Icons.add_alert,Icons.help_outline_outlined,Icons.add_location_outlined,Icons.menu_book];
class donate extends StatefulWidget {
  const donate({super.key});

  @override
  State<donate> createState() => _donateState();
}

class _donateState extends State<donate>with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(

        backgroundColor: Color(0xFFF52646),
    title: Text("PULSE",style: TextStyle(color: Colors.white),),
    leading: Padding(
    padding: const EdgeInsets.all(8.0),

    child: Image.asset("images/Drop 2.png",scale: 1.5,),
    ),
    ),
    body:SingleChildScrollView(
      child: Container(
        height: MediaQuery. of(context). size. height*2,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color:Colors.pink[50],
                  borderRadius:BorderRadius.circular(20),

                ),

                height: 60,
                child: TextFormField(

                  decoration: InputDecoration(labelText: 'enter',
                    border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),)
                    ),),
                  validator: (input) => input!.trim().isEmpty
                      ? 'Please enter a valid name'
                      : null,
                  onSaved: (input) => hospital = input!,
                ),
              ),
            ),
            Container(

              height: 1000,
              child: ListView.builder(
                  itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0x7FA0A0A0)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 10,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],),
                    child: ExpansionTileCard(
                      trailing: Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                        color:  Color(0xFFF52646),
                          borderRadius: BorderRadius.circular(20)
                      ),child: Center(child: Text("200m",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),),
                      title: Container(

                      height: 80,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          Image.network("https://srmglobalhospitals.com/wp-content/uploads/2023/02/0408fecb-4d79-4a74-b7fd-b61c6aafef7a.jpeg"),
                         // Image.asset("images/profile_pic.png"),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(" SRM GLOBAL HOSPITAL",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              ),
                              Text("SRM KTR",style: TextStyle(fontSize: 14),),
                              Text("blood bank open",style: TextStyle(fontSize: 14),)
                            ],
                          ),
                        ],
                      ),
                    ),
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 70,
                          ),
                          // IconButton(onPressed: (){
                          //   Navigator.push(context, MaterialPageRoute(builder: (context) =>  MyMap()),);
                          // }, icon: Icon(Icons.message_rounded),style: IconButton.styleFrom(shape: CircleBorder()),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context) =>  signup()),);
                            }, icon: Icon(Icons.phone),style: IconButton.styleFrom(shape: CircleBorder(),backgroundColor: Colors.pink[50]),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context) =>  signup()),);
                            }, icon: Icon(Icons.message_rounded),style: IconButton.styleFrom(shape: CircleBorder(),backgroundColor: Colors.pink[50]),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context) =>  signup()),);
                            }, icon: Icon(Icons.message_rounded),style: IconButton.styleFrom(shape: CircleBorder(),backgroundColor: Colors.pink[50]),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context) =>  signup()),);
                            }, icon: Icon(Icons.message_rounded),style: IconButton.styleFrom(shape: CircleBorder(),backgroundColor: Colors.pink[50]),),
                          ),

                        ],
                      )
                    ],),
                  ),
                );}
              ),
            )

          ],
        ),
      ),
    )
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}


class donatehome extends StatefulWidget {
  const donatehome({super.key});

  @override
  State<donatehome> createState() => _donatehomeState();
}

class _donatehomeState extends State<donatehome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,

        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 5),
                  child: Text("Hello, Aman Agrawal",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 5),
                  child: Text("Male • Age: 21",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),)
                ),
              ],
            ),
            SizedBox(
              width: 70,
            ),
            Stack(
              alignment: Alignment.bottomRight,
                children:[ CircleAvatar(backgroundImage: AssetImage("images/profile_pic.png"),radius: 50,),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  color: Color(0xFFF52646)
                ),
                child: Center(child: Text("O+",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18) ,)),
              )
            ]),


          ],
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          height: 300,
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 30.0, // spacing between rows
            crossAxisSpacing: 8.0,
          ),
              padding: EdgeInsets.all(8.0),
              itemCount:6,
              itemBuilder: (context, index){
            return InkWell(
              onTap: () {
                // Handle the icon button click here
                if(index==2){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  eligible()),);
                }
                else if (index==0){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  donate()),);

                }
                else if (index==3){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  howmuch()),);

                }
                else if (index==1){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  schedulerequest()),);

                }
                // You can also use Navigator to navigate to a new screen
              },

              child: Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0x7FA0A0A0)),
                  borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: [
                  BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 10,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                  )
                  ],),

                height: 30,
                width: 30,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Center(child: Icon(iconimage[index],color: Color(0xFFF52646),size:30 ,)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 15, 8, 5),
                      child: Text(icontext[index]),
                    )
                  ],
                ),
              ),
            );
              }),
        )
      ],
    );
  }
}

class eligible extends StatefulWidget {
  const eligible({super.key});

  @override
  State<eligible> createState() => _eligibleState();
}

class _eligibleState extends State<eligible> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        appBar: AppBar(

        backgroundColor: Color(0xFFF52646),
    title: Text("PULSE",style: TextStyle(color: Colors.white),),
    leading: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.asset("images/Drop 2.png",scale: 1.5,),
    ),
    ),
    body:Column(
      children: [
        SizedBox(
          height: 40,

        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 5),
                  child: Text("Hello, Aman Agrawal",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 5),
                    child: Text("Male • Age: 21",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),)
                ),
              ],
            ),
            SizedBox(
              width: 70,
            ),
            Stack(
                alignment: Alignment.bottomRight,
                children:[ CircleAvatar(backgroundImage: AssetImage("images/profile_pic.png"),radius: 50,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF52646)
                    ),
                    child: Center(child: Text("O+",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18) ,)),
                  )
                ]),


          ],
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0x7FA0A0A0)),
              borderRadius: BorderRadius.circular(10),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 10,
                offset: Offset(0, 0),
                spreadRadius: 0,
              )
            ],),

            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon((Icons.add_alert),size: 40,color: Color(0xFFF52646),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton( onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.close_outlined,),highlightColor: Colors.grey,),
                    )

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Am I eligible to donate blood?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Flexible(child: Text("Based on the information provided in your test results, it appears that you are eligible to donate blood."
                      "\n\nYou have indicated that you do not have any medical conditions, do not have tattoos, and do not smoke or drink. These factors typically meet the basic eligibility criteria for blood donation.\n\nHowever, it's important to note that eligibility requirements can vary by location and organization, so it's advisable to get youself checked on the spot when you arrive at your local blood donation center.",style:TextStyle(fontSize: 15)),
                ),)
              ],
            )
        )
      ],)
    );
  }
}

class howmuch extends StatefulWidget {
  const howmuch({super.key});

  @override
  State<howmuch> createState() => _howmuchState();
}

class _howmuchState extends State<howmuch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(

          backgroundColor: Color(0xFFF52646),
          title: Text("PULSE",style: TextStyle(color: Colors.white),),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/Drop 2.png",scale: 1.5,),
          ),
        ),
        body:Column(
          children: [
            SizedBox(
              height: 40,

            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 5),
                      child: Text("Hello, Aman Agrawal",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 5),
                        child: Text("Male • Age: 21",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),)
                    ),
                  ],
                ),
                SizedBox(
                  width: 70,
                ),
                Stack(
                    alignment: Alignment.bottomRight,
                    children:[ CircleAvatar(backgroundImage: AssetImage("images/profile_pic.png"),radius: 40,),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF52646)
                        ),
                        child: Center(child: Text("O+",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18) ,)),
                      )
                    ]),


              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0x7FA0A0A0)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 10,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],),

                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon((Icons.add_alert),size: 40,color: Color(0xFFF52646),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 250,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton( onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.close_outlined,),highlightColor: Colors.grey,),
                        )

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("How much blood can I donate?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Flexible(child: Text("The amount of blood you can donate typically ranges from 350 to 500 milliliters in a single donation, depending on the guidelines of your local blood donation center.",style:TextStyle(fontSize: 15)),
                      ),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("How much does it cost?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Flexible(child: Text("In many countries, donating blood is typically a voluntary and altruistic act, so it is usually free of charge. Blood donation centers rely on voluntary donations to maintain their supply.",style:TextStyle(fontSize: 15)),
                      ),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("How much impact will it create?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Flexible(child: Text("Donating blood can have a significant impact as it helps save lives by providing essential blood products to patients in need, including those undergoing surgeries.",style:TextStyle(fontSize: 15)),
                      ),),

                  ],
                )
            )
          ],)
    );
  }
}
