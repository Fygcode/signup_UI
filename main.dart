import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Widget _back(){
    return Container(
      height: 800,
      width: double.infinity,
      color: Colors.white,

    );
  }

  Widget _topcurve(){
    return Container(
      height: 400,

      decoration: const BoxDecoration(
          color: Color(0xFF83A6BA),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.elliptical(200, 140)
        )
      ),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
          _back(),
          _topcurve(),

          Positioned(
            bottom: 0,
            width: 360,
            child: Container(
              height: 130,
              decoration: const BoxDecoration(
                  color: Color(0xFF83A6BA),
                  borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(180, 80)
                  )
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 130,
            child: Container(
              color: const Color(0xFF83A6BA),
              child: const Text('LOGO',style: TextStyle(fontSize: 45,color: Colors.black,fontWeight: FontWeight.w900),),
            ),
          ),

          Positioned(
            left: 150,
            bottom: 40,
            child: Container(
              color: const Color(0xFF83A6BA),
              child: const Icon(Icons.home,size: 50,),
            ),
          ),

          Positioned(
            top: 270,
            left: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 250,
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black87,
                            blurRadius: 20.0,
                            offset: Offset(0, 5)

                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text('SIGN IN',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17,color: Colors.deepPurple), textAlign: TextAlign.center,),
                          subtitle: Text('CONTINUE WITH',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black)),
                        ),
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: CircleAvatar(
                              child: Icon(Icons.ac_unit_rounded),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(30),

                              ),
                              child: const Center(child: Text('MOBILE NUMBER',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: CircleAvatar(
                              child: Icon(Icons.add_a_photo),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Center(child: Text('GOOGLE ACCOUNT',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: CircleAvatar(
                              child: Icon(Icons.zoom_in),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFDC9B9B),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Center(child: Text('FACE BOOK',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('Term & Condition',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                          Text('Privacy Policy',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text('Contact Admin',style: TextStyle(fontSize: 15,color: Color(0xFFDC9B9B)))
                    ],
                  ),
                ),



              ],

            ),
          ),

        ],
      ),
    );
  }
}

