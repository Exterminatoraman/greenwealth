import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'dispose.dart';
class donate extends StatefulWidget {
  const donate({super.key});

  @override
  State<donate> createState() => _donateState();
}

class _donateState extends State<donate> {
  Future<void> _showImagePickerDialog() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose an option'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: Text('Take a picture'),
                  onTap: () {
                    getFromGallery();
                    Navigator.of(context).pop();
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                GestureDetector(
                  child: Text('Select from gallery'),
                  onTap: () {
                    getFromGallery();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200]
      ),
      height: MediaQuery. of(context). size. height,
      width: MediaQuery. of(context). size. width,
      child:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),

                  color: Colors.white
              ),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      onTap: (){
                        pushNewScreen(context, screen: categories());},
                      child: Container(
                          child: Center(
                            child: Row(
                              children: [
                                Icon(Icons.restore_from_trash,color: Colors.green,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Select waste catergories",style: TextStyle(fontSize: 20),),
                                ),

                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      onTap: ()  {
                        _showImagePickerDialog();},
                      child: Container(
                          child: Center(
                            child: Row(
                              children: [
                                Icon(Icons.camera_alt_outlined,color: Colors.green,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("click a picture",style: TextStyle(fontSize: 20),),
                                ),

                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      onTap: (){
                        pushNewScreen(context, screen: location());},
                      child: Container(
                          child: Center(
                            child: Row(
                              children: [
                                Icon(Icons.pin_drop,color: Colors.green,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Select a pickup location",style: TextStyle(fontSize: 20),),
                                ),

                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      onTap: (){
                        pushNewScreen(context, screen: pickupslot());},
                      child: Container(
                        child: Center(
                          child: Row(
                            children: [
                              Icon(Icons.calendar_month_outlined,color: Colors.green,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("select a pickup slot",style: TextStyle(fontSize: 20),),
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 120,
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
                    child: Text("Confirm ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),))),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class categories extends StatefulWidget {
  const categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  bool checkboxValue1 = true;
  String custom="";
  TextEditingController custom1 = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'images/logo.jpg',
                fit: BoxFit.contain,
                height: 32,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0), child: Text('Greenwealth',style: TextStyle(fontWeight: FontWeight.bold),))
            ],),

        ),
        body:Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(55, 8, 8, 8),
                    child: Text("Select the waste category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  ),            ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    CheckboxListTile(
                        title: Text("Paper"),
                        value: checkboxValue1, onChanged: (bool? value) {setState(() {checkboxValue1 = value!;});}),
                    Divider(
                      thickness: 1,
                    ),
                    CheckboxListTile(
                        title: Text("plastic"),
                        value: checkboxValue1, onChanged: (bool? value) {setState(() {checkboxValue1 = value!;});}),
                    Divider(
                      thickness: 1,
                    ),
                    CheckboxListTile(
                        title: Text("metal"),
                        value: checkboxValue1, onChanged: (bool? value) {setState(() {checkboxValue1 = value!;});}),
                    Divider(
                      thickness: 1,
                    ),
                    CheckboxListTile(
                        title: Text("Furniture"),
                        value: checkboxValue1, onChanged: (bool? value) {setState(() {checkboxValue1 = value!;});}),
                    Divider(
                      thickness: 1,
                    ),
                    CheckboxListTile(
                        title: Text("Electronics"),
                        value: checkboxValue1, onChanged: (bool? value) {setState(() {checkboxValue1 = value!;});}),
                    Divider(
                      thickness: 1,
                    ),
                    CheckboxListTile(
                        title: Text("clothes"),
                        value: checkboxValue1, onChanged: (bool? value) {setState(() {checkboxValue1 = value!;});}),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius:BorderRadius.circular(15),
                  ),
                  child: TextField(
                    controller: custom1,
                    decoration: const InputDecoration(labelText: 'enter custom',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),)
                      ),),
                    onChanged: (String text) {
                      setState(() {
                        custom = text;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 85,
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
                      child: Text("Proceed ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),))),
                ),
              ),
            ],
          ),
        ));
  }
}
class pickupslot extends StatefulWidget {
  const pickupslot({super.key});

  @override
  State<pickupslot> createState() => _pickupslotState();
}

class _pickupslotState extends State<pickupslot> {
  TextEditingController dateinput = TextEditingController();
  TimeOfDay _startTime = TimeOfDay.now();
  TimeOfDay _endTime = TimeOfDay.now();
  TextEditingController timeinput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'images/logo.jpg',
              fit: BoxFit.contain,
              height: 32,
            ),
            Container(
                padding: const EdgeInsets.all(8.0), child: Text('Greenwealth',style: TextStyle(fontWeight: FontWeight.bold),))
          ],),

      ),
      body: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],

          ),
          child: Column(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new,color: Colors.green,)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(70, 8, 8, 8),
                      child: Text("Select a pickup slot",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(

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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(

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

                    ],


                  ),
                ),
                SizedBox(
                  height: 450,
                ),

                Container(
                  height: 50,
                  width: 370,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: TextButton(
                      onPressed: (){
                        Navigator.pop(context);


                      },
                      child: Text("Proceed ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),))),
                ),])
      ),
    );
  }
}



getFromGallery() async {

  final ImagePicker imgpicker = ImagePicker();
  var pickedFile = await imgpicker.pickImage(source: ImageSource.camera);
  if(pickedFile != null){
    final File imageFile = File(pickedFile.path);
    print(pickedFile.path);
    return imageFile;
  }else{
    print("No image is selected.");
  }
}

class location extends StatefulWidget {
  const location({super.key});

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  TextEditingController custom1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'images/logo.jpg',
                fit: BoxFit.contain,
                height: 32,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0), child: Text('Greenwealth',style: TextStyle(fontWeight: FontWeight.bold),))
            ],),

        ),
        body:Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(65, 8, 8, 8),
                    child: Text("Select a pickup location",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          style: TextStyle(
                              fontSize: 20
                          ),
                          decoration: InputDecoration.collapsed(


                              hintText: "Door No."
                          ),
                          controller: custom1,
                          onChanged: (String text) {
                            setState(() {
                            });
                          },
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          style: TextStyle(
                              fontSize: 20
                          ),
                          decoration: InputDecoration.collapsed(


                              hintText: "Apartment Name."
                          ),
                          controller: custom1,
                          onChanged: (String text) {
                            setState(() {
                            });
                          },
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          style: TextStyle(
                              fontSize: 20
                          ),
                          decoration: InputDecoration.collapsed(


                              hintText: "Address Line 1"
                          ),
                          controller: custom1,
                          onChanged: (String text) {
                            setState(() {
                            });
                          },
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          style: TextStyle(
                              fontSize: 20
                          ),
                          decoration: InputDecoration.collapsed(


                              hintText: "Address Line 2."
                          ),
                          controller: custom1,
                          onChanged: (String text) {
                            setState(() {
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 12,)

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(

                    width: 400,
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius:BorderRadius.circular(15),
                    ),
                    child: TextButton(onPressed: (){}, child: Row(
                      children: [
                        Text("Select on map",style: TextStyle(fontSize: 18,color: Colors.black),),
                      ],
                    ))
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,

                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(
                          fontSize: 20
                      ),
                      decoration: InputDecoration.collapsed(


                          hintText: "Address nickname"
                      ),
                      controller: custom1,
                      onChanged: (String text) {
                        setState(() {
                        });
                      },
                    ),
                  ),
                  ),
                ),
              ),

              SizedBox(
                height:190,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 50,
                  width: 370,
                  decoration: BoxDecoration(
                      color: Colors.green[700],
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: TextButton(
                      onPressed: (){
                        Navigator.pop(context);


                      },
                      child: Text("Proceed ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),))),
                ),
              ),

            ],
          ),
        ));
  }
}

