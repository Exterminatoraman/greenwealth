import 'package:blooddonation/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'Donate.dart';
List <String> bloodgroup=["O+","A+","B+","AB+","O-","A-","B-","AB-"];
String blood="";
String date="";
String loc1="";
String patientname="";
String patientage="";
String patientgender="";
class request extends StatefulWidget {
  const request({super.key});

  @override
  State<request> createState() => _requestState();
}

class _requestState extends State<request>{
 // List<bool> isSelect = List.generate(8, (index) => false);
  int selectedIndex = -1; // Initially, no container is selected

  @override
  Widget build(BuildContext context) {
    return Container(
            height: MediaQuery. of(context). size. height,

      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text("Select the required blood group",style: TextStyle(fontWeight: FontWeight.bold),),
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 30.0, // spacing between rows
                  crossAxisSpacing: 10.0,
                ),
                    padding: EdgeInsets.all(8.0),
                    itemCount:8,
                    itemBuilder: (context, index){
                      return InkWell(
                        onTap: (){
                          setState(() {
                            selectedIndex = index;
                           // isSelect[index]=!isSelect[index];
                          });
                          },
                          // You can also use Navigator to navigate to a new screen


                        child: Container(
                          decoration:BoxDecoration(
                            color: selectedIndex == index ? Color(0xFFF52646) : Colors.pink[50],

                      borderRadius: BorderRadius.circular(10),),

                          height: 20,
                          width: 20,
                          child:Center(child: Text(bloodgroup[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                        ),
                      );
                    }),
              ),
            ),
            // Row(
            //   children: [
            //     SizedBox(
            //       width: 25,
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: GestureDetector(
            //         onTap: (){
            //           setState(() {
            //             isselect=!isselect;
            //           });
            //         },
            //         child: Container(
            //           height: 70,
            //           width: 70,
            //           decoration:BoxDecoration(
            //               color: isselect?(Color(0xFFF52646)):(Colors.pink[50]),
            //
            //             borderRadius: BorderRadius.circular(10)
            //           ),
            //           child: Center(child: Text("O+",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: GestureDetector(
            //         onTap: (){
            //           setState(() {
            //             isselect=!isselect;
            //           });
            //           },
            //         child: Container(
            //           height: 70,
            //           width: 70,
            //           decoration:BoxDecoration(
            //               color: isselect?(Color(0xFFF52646)):(Colors.pink[50]),
            //
            //               borderRadius: BorderRadius.circular(10)
            //           ),
            //           child: Center(child: Text("A+",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
            //         ),
            //       ),
            //     ),Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: GestureDetector(
            //         onTap: (){
            //           setState(() {
            //             isselect=!isselect;
            //           });
            //         },
            //         child: Container(
            //           height: 70,
            //           width: 70,
            //           decoration:BoxDecoration(
            //               color: isselect?(Color(0xFFF52646)):(Colors.pink[50]),
            //               borderRadius: BorderRadius.circular(10)
            //           ),
            //           child: Center(child: Text("B+",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
            //         ),
            //       ),
            //     ),Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: GestureDetector(
            //         onTap: (){
            //           setState(() {
            //             isselect=!isselect;
            //           });
            //         },
            //         child: Container(
            //           height: 70,
            //           width: 70,
            //           decoration:BoxDecoration(
            //               color: isselect?(Color(0xFFF52646)):(Colors.pink[50]),
            //               borderRadius: BorderRadius.circular(10)
            //           ),
            //           child: Center(child: Text("AB+",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // Row(
            //   children: [
            //     SizedBox(
            //       width: 25,
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: GestureDetector(
            //         onTap: (){
            //           setState(() {
            //             isselect=!isselect;
            //           });
            //         },
            //         child: Container(
            //           height: 70,
            //           width: 70,
            //           decoration:BoxDecoration(
            //               color: isselect?(Color(0xFFF52646)):(Colors.pink[50]),
            //               borderRadius: BorderRadius.circular(10)
            //           ),
            //           child: Center(child: Text("O-",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: GestureDetector(
            //         onTap: (){
            //           setState(() {
            //             isselect=!isselect;
            //           });
            //         },
            //         child: Container(
            //           height: 70,
            //           width: 70,
            //           decoration:BoxDecoration(
            //               color: isselect?(Color(0xFFF52646)):(Colors.pink[50]),
            //               borderRadius: BorderRadius.circular(10)
            //           ),
            //           child: Center(child: Text("A-",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
            //         ),
            //       ),
            //     ),Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: GestureDetector(
            //         onTap: (){
            //           setState(() {
            //             isselect=!isselect;
            //           });
            //         },
            //         child: Container(
            //           height: 70,
            //           width: 70,
            //           decoration:BoxDecoration(
            //               color: isselect?(Color(0xFFF52646)):(Colors.pink[50]),
            //               borderRadius: BorderRadius.circular(10)
            //           ),
            //           child: Center(child: Text("B-",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
            //         ),
            //       ),
            //     ),Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: GestureDetector(
            //         onTap: (){
            //           setState(() {
            //             isselect=!isselect;
            //           });
            //         },
            //         child: Container(
            //           height: 70,
            //           width: 70,
            //           decoration:BoxDecoration(
            //               color: isselect?(Color(0xFFF52646)):(Colors.pink[50]),
            //               borderRadius: BorderRadius.circular(10)
            //           ),
            //           child: Center(child: Text("AB-",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 30,
            ),
            Text("Approx Unit of blood required(in ml)",style: TextStyle(fontWeight: FontWeight.bold),),
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
                  onSaved: (input) => blood = input!,
                ),
              ),
            ),
              SizedBox(
                height: 50,
              ),
              Padding(
              padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 400,
        decoration: BoxDecoration(
        color:Colors.pink[50],
        borderRadius:BorderRadius.circular(20),

        ),

        height: 60,
        child:Center(child: TextButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) =>  schedulerequest()),);},
        child: Text("Schedule Request ->",style: TextStyle(fontWeight: FontWeight.bold),))),)),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  decoration: BoxDecoration(
                    color:Color(0xFFF52646),
                    borderRadius:BorderRadius.circular(20),

                  ),

                  height: 60,
                  child:Center(child: TextButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>  donate()),);},

                      child: Text(" Request Immediately ",style: TextStyle(color: Colors.white),))),))
          ],
        ),
      ),
    );
  }


}


class schedulerequest extends StatefulWidget {
  const schedulerequest({super.key});

  @override
  State<schedulerequest> createState() => _schedulerequestState();
}

class _schedulerequestState extends State<schedulerequest> {
  TextEditingController dateinput = TextEditingController();
  TimeOfDay _startTime = TimeOfDay.now();
  TimeOfDay _endTime = TimeOfDay.now();
  TextEditingController timeinput = TextEditingController();
  TextEditingController loc = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController gender = TextEditingController();

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
        Text("Venue details"),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
          child: Container(
            decoration: BoxDecoration(
              color:Colors.pink[50],
              borderRadius:BorderRadius.circular(20),

            ),
            width: 400,

            height: 50,
            child:TextField(

              controller: dateinput,
                readOnly: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.calendar_month_outlined),
                  hintText: "Select a date range",
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),)
                  ),),
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101)
                    );
                    if(pickedDate != null ){
                      print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                      date=formattedDate; //formatted date output using intl package =>  2021-03-16
                      //you can implement different kind of Date Format here according to your requirement
                      setState(() {
                        dateinput.text = formattedDate; //set output date to TextField value.
                      });
                    }else{
                      print("Date is not selected");
                    }
                  },


            ),
          ),
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
            child:TextField(

              controller: timeinput,
              readOnly: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.watch_later_outlined),
                hintText: "Select a time slot",
                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15.0),)
                ),),
              onTap: () async {
                final initialStartTime = _startTime;
                final initialEndTime = _endTime;

                final startTime = await showTimePicker(
                  context: context,
                  initialTime: initialStartTime,
                );

                if (startTime != null) {
                  final endTime = await showTimePicker(
                    context: context,
                    initialTime: initialEndTime,
                  );

                  if (endTime != null) {
                    setState(() {
                      _startTime = startTime;
                      _endTime = endTime;
                      timeinput.text = '${_startTime.format(context)} - ${_endTime.format(context)}';
                    });
                  }
                }
              }


            ),
          ),
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
            child:
                TextFormField(

                controller: loc,

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.pin_drop_outlined),
                  labelText: 'Set location ',
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),)
                  ),),
                validator: (input) => input!.trim().isEmpty
                    ? 'Please enter a valid name'
                    : null,
                onChanged: (String text) {
                  setState(() {
                    loc1 = text;
                  });

                }

            ),
          ),
        ),
        Text("Personal Details "),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
          child: Container(
            decoration: BoxDecoration(
              color:Colors.pink[50],
              borderRadius:BorderRadius.circular(20),

            ),
            width: 400,

            height: 50,
            child: TextFormField(
                controller: name,

                decoration: InputDecoration(labelText: 'enter the patient name',
                  prefixIcon: Icon(Icons.account_circle_outlined),
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),)
                  ),),
                validator: (input) => input!.trim().isEmpty
                    ? 'Please enter a valid name'
                    : null,
                onChanged: (String text) {
                  setState(() {
                    patientname = text;
                  });

                }

            ),
          ),
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
            child: TextFormField(
                controller: age,

                decoration: InputDecoration(labelText: 'enter the patient age',
                  prefixIcon: Icon(Icons.mood_outlined),
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),)
                  ),),
                validator: (input) => input!.trim().isEmpty
                    ? 'Please enter a valid name'
                    : null,
                onChanged: (String text) {
                  setState(() {
                    patientage = text;
                  });

                }

            ),
          ),
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
            child: TextFormField(
                controller: gender,

                decoration: InputDecoration(labelText: 'enter the patient gender',
                  prefixIcon: Icon(Icons.male),
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),)
                  ),),
                validator: (input) => input!.trim().isEmpty
                    ? 'Please enter a valid name'
                    : null,
                onChanged: (String text) {
                  setState(() {
                    patientgender = text;
                  });

                }

            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
          child: Container(
            width: 400,
            height: 50,
            decoration: ShapeDecoration(
              color: Color(0xFFF52646),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
             child:Center(
              child: TextButton(
                child:Text(
                  'Place Request',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0.06,
                  ),
                ), onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) =>  donate()),);},
              ),
            ),
          ),
        )



      ],
    )
    );
  }
}
