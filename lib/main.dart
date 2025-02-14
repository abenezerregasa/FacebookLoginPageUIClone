import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FacebookClone(),
    );
  }
}

class FacebookClone extends StatefulWidget {
  const FacebookClone({super.key});

  @override
  State<FacebookClone> createState() => _FacebookCloneState();
}

class _FacebookCloneState extends State<FacebookClone> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F5),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Facebook", style: TextStyle(fontSize: 43, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 49, 62, 241)),),
                Text(
                    "Connect with your friends and the world "),
                Text(
                    "around you on facebook. "),
              ],
            ),
            SizedBox(
              width: 20,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                   decoration: BoxDecoration(color: Colors.white),
                  width: 500, 
                  height: 300,
                          margin: EdgeInsets.all(22),
                          padding: EdgeInsets.all(20),
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                          labelText: "Email or Phone Number",
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                          labelText: "Password",
                        ),
                
                      ),
                      SizedBox(height: 15,),
                
                      SizedBox(
                        width: 500,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero
                            )
                          ),
                          
                          
                          onPressed:() {}, 
                          child: Text("Login"),
                        
                        ),
                      ),
                
                      SizedBox(height: 20,),
                      Text("Forgot account?", style: TextStyle(color: Colors.blueAccent),),
                     
                      SizedBox(height: 15,),
                
                      SizedBox(
                        width: 200,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            )

                          ),
                          
                          
                          onPressed:() {}, 
                          child: Text("Create New Account"),
                        
                        ),
                      ),
                
                    ],
                  ),
                ),


                Row(
                  children: [
                    Text("Create a page", style: TextStyle(fontWeight:FontWeight.bold),),
                    SizedBox(width: 4,),
                    Text("for a celebrity, band or business.")
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
