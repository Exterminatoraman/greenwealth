import 'package:flutter/material.dart';

import 'dispose.dart';
String weight="";
class camerapreview extends StatefulWidget {
  const camerapreview({super.key});

  @override
  State<camerapreview> createState() => _camerapreviewState();
}

class _camerapreviewState extends State<camerapreview> {
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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15)
              ),
              child: selectedImage == null
                  ? Text('No image selected.')
                  : Image.file(selectedImage!,),
            ),
          ),
        ],
      ),
    ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(
                    fontSize: 20
                ),
                decoration: InputDecoration.collapsed(


                    hintText: "Enter Weight"
                ),
                controller: custom1,
                onChanged: (String text) {
                  setState(() {
                    weight=custom1.text;
                  });
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
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
      ),
    );
  }
}
