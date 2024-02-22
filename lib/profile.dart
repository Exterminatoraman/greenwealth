import 'package:flutter/material.dart';
import 'package:greenwealth/main.dart';
import 'package:greenwealth/services/authentication.dart';

import 'Login.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  bool isDarkMode = false;
  void changeTheme(bool isDark) {
    setState(() {
      theme = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: [
          IconButton(onPressed: () async {
            await AuthService().signOut();
            Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return profile();
                },
              ),
                  (_) => false,
            );
          }, icon: Icon(Icons.account_circle)
          ),

        ],
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
            color: Colors.grey[200]
        ),
        height: MediaQuery. of(context). size. height,
        width: MediaQuery. of(context). size. width,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text("PROFILE",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(
                  width: 260,
                ),
                TextButton(onPressed: (){}, child: Text("Edit",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.green),))
              ],
            ),
            CircleAvatar(radius:40 ,backgroundImage: AssetImage("images/logo.jpg"),),
          Text("Abeer Mathur"),
            Text("1200 points"),
      Padding(
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
                      onTap: (){},
                      child: Container(
                          child: Center(
                            child: Row(
                              children: [
                                Icon(Icons.account_circle,color: Colors.green,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Account Setting",style: TextStyle(fontSize: 20),),
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
                      onTap: (){},
                      child: Container(
                          child: Center(
                            child: Row(
                              children: [
                                Icon(Icons.language,color: Colors.green,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Language",style: TextStyle(fontSize: 20),),
                                ),

                              ],
                            ),
                          )
                      ),
                    ),
                  ),


                  ])),
      ),
      Padding(
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
                  onTap: (){},
                  child: Container(
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.access_time,color: Colors.green,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Previous Order",style: TextStyle(fontSize: 20),),
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
                  onTap: (){},
                  child: Container(
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.restore_from_trash,color: Colors.green,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Leaderboards",style: TextStyle(fontSize: 20),),
                            ),

                          ],
                        ),
                      )
                  ),
                ),
              ),


            ],

          ),
        ),
      ),
        Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: (){},
              child: Container(
                height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                  ),
              child:Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.restore_from_trash,color: Colors.green,),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("Dark Mode",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Switch(
                      activeColor: Colors.green,
                      value: theme == ThemeMode.dark,
                    onChanged: (value){
    changeTheme(value);}
                  ),


                ],
              ),
                ),
            )),
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
                    onPressed: () async {
                      await AuthService().signOut();
                      Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return login();
                          },
                        ),
                            (_) => false,
                      );
                    },
                    child: Text("Logout ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),))),
              ),
            ),
          ]))

      );
  }
}
