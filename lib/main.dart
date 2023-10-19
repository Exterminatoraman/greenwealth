import 'package:blooddonation/Signup.dart';
import 'package:blooddonation/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
String sinterest="";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade900),
        useMaterial3: true,
      ),
      home: const splashscreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController searchinterest = TextEditingController();

  List<String> bloodgroup=["A+","A-","B+","B-","O+","O-","AB+","AB-"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        title: Center(child: Text(widget.title,style: TextStyle(color: Colors.white),)),
        leading:IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,)),

          actions: [
          IconButton(onPressed: (){}, icon: CircleAvatar(backgroundImage: AssetImage("images/profile_pic.png"),radius: 20,)),
        ],

      ),
      body: Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 60,
              child: TextField(
                controller: searchinterest,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(200.0))
                  ),

                  labelText: 'Search',
                ),
                onTap: () {
                  setState(() async {
                    sinterest = searchinterest.text;
                  });
                },
                onSubmitted: (String str){
                  sinterest=str;
                },

              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 400,
            height: 35,
            child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,

                itemBuilder: (BuildContext context,int index){
                  return Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(

                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.red.shade600
                        ),
                        child: Text(bloodgroup[index],style: TextStyle(color:Colors.white),),
                      ),
                    ],
                  );

    } ,
    ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              height: 110,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.pink.shade200.withOpacity(0.3),
                borderRadius:BorderRadius.all(Radius.circular(10.0))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset("images/profile_pic.png"),
                  ),
                  Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.fromLTRB(8,14,3,3),
                        child: Text("Aman Agrawal",style: TextStyle(fontSize: 20),),
                      ),
                      Text("D-52/47,Luxa,"),
                      Text("Varanasi"),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(75,15,8,0),
                        child: Align(
                          alignment: Alignment.topRight,
                            child: Text("O+",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.pink),)),
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  signup()),);
                          }, icon: Icon(Icons.message_rounded),style: IconButton.styleFrom(shape: CircleBorder()),)
                         // ElevatedButton(onPressed: (){}, child:Icon(Icons.message_rounded),style: ElevatedButton.styleFrom(shape: CircleBorder()),),
                          // ElevatedButton(onPressed: (){}, child:Icon(Icons.message_rounded),style: ElevatedButton.styleFrom(shape: CircleBorder()),),

                        ],
                      )


                    ],
                  ),

                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
