import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:greenwealth/Login.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:intl/intl.dart';

String date="";
class dispose extends StatefulWidget {
  const dispose({super.key});

  @override
  State<dispose> createState() => _disposeState();
}

class _disposeState extends State<dispose> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2, // Number of tabs
        child: Scaffold(
        appBar: AppBar(
            bottom: TabBar(
    tabs: [
    Tab(text: 'Dispose'),
    Tab(text: 'Donate'),
    ],
    ),
    ),
    body: TabBarView(
    children: [
      disposescreen(),
    // Content of Tab 1


    // Content of Tab 2
    Center(child: Text('Content for Tab 2')),

    // Content of Tab 3
    ],
    ),
    ),

    );
  }
}
class disposescreen extends StatefulWidget {
  const disposescreen({super.key});

  @override
  State<disposescreen> createState() => _disposescreenState();
}

class _disposescreenState extends State<disposescreen> {
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
        child: Container(
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
                          Icon(Icons.restore_from_trash),
                          Text("Select the waste catergories",style: TextStyle(fontSize: 18),)

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
                    pushNewScreen(context, screen: login());},
                  child: Container(
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.camera_alt_outlined),
                            Text("click a picture",style: TextStyle(fontSize: 18),)

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
                    pushNewScreen(context, screen: login());},
                  child: Container(
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.restore_from_trash),
                            Text("Select a pickup location",style: TextStyle(fontSize: 18),)

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
                            Icon(Icons.restore_from_trash),
                            Text("select a pickup slot",style: TextStyle(fontSize: 18),)

                          ],
                        ),
                      )
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
            ],
          ),
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
      appBar: AppBar(),
      body:Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new)),
            Text("Select the waste categories"),
            ],
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
      appBar: AppBar(),
      body: Container(
      decoration: BoxDecoration(
        color: Colors.grey[300]
      ),
      child: Column(
          children: [
      Row(
      children: [
      IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new)),
      Text("Select a pickup slot"),
      ],
    ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                TextField(

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
                TextField(

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
