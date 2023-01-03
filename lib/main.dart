import 'package:coffee_shop/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg1.png'),
            fit: BoxFit.cover
          )
        ),
        // color: Color(0XFFececec),
        child: (
        Column(
          children: [
            SizedBox(height: 90,),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Image.asset('assets/images/coffee.png'),
              ),
              height: 400,
            ),
            Text('Coffee So Good,',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Color(0XFF895d3b)),),
            SizedBox(height: 5,),
            Text('Your Taste Buds',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Color(0XFF895d3b)),),
            SizedBox(height: 5,),
            Text('Will Love it,',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Color(0XFF895d3b)),),

            SizedBox(height: 40,),
             Text('The Best gain,the finest roast,',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.black54),),
            SizedBox(height: 5,),
            Text('the most powerful flavour',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.black54),),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Icon(Icons.more_horiz,size: 50,),
            ),

            Container(
              width: 200,
              height: 50,
              child: OutlinedButton(
                child: Text("Get Started",style: TextStyle(fontSize: 20),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  second_screen()),
                  );

                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0XFFd3b48e),
                  primary: Colors.black54
                )
              ),
            )

          ],
        )

        ),
      ),
    );
  }

}

class second_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextEditingController searchcontroller=TextEditingController();
    String ?search;

    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Color(0XFFfbfbfb),
        child: (
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),

            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/passport.jpg'),
                      radius: 25,
                    ),
                ),

                Container(
                  child: Row(
                    children: [
                      Icon(Icons.location_on),
                      RichText(
                        text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(text: "Logas,",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: "Nigeria",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black))
                            ]
                        ),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: FaIcon(FontAwesomeIcons.bell,color: Color(0XFF895d3b),),
                )
              ],
            ),

            Divider(color: Colors.black26,),

            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Text("Good Morning, David",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: searchcontroller,
                onChanged: (val){
                  search=(val.length>=10)?'Please Enter Valid Input':null;

                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Search",
                  suffixIcon: Icon(Icons.mic,color: Colors.black,),
                  prefixIcon: Icon(Icons.search,color: Colors.black,),
                  fillColor: Color(0XFFf4f4f4),
                  filled: true,


                ),


              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10,top: 15),
              child: Text("Categories",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),),
            ),
            SizedBox(height: 15,),
            
            LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:   Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 150,

                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.coffee),
                            SizedBox(width: 5,),
                            Text("Cappuccino",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),)
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Color(0XFFce9f69),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(
                                      0.3,0.3
                                  ),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  color: Colors.black26
                              )
                            ],
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 150,

                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.water),
                            SizedBox(width: 5,),
                            Text("Espresso",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),)
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(
                                      0.3,0.3
                                  ),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  color: Colors.black26
                              )
                            ],
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 150,

                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.fire),
                            SizedBox(width: 5,),
                            Text("Americano",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),)
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(
                                      0.3,0.3
                                  ),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  color: Colors.black26
                              )
                            ],
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
            SizedBox(height: 15,),

            LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      height: 250,

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(
                                    0.3,0.3
                                ),
                                spreadRadius: 1,
                                blurRadius: 3,
                                color: Colors.black12
                            )
                          ]
                      ),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 10,right: 10,bottom: 10),
                            child: Container(

                              width: 170,
                              height: 130,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/co2.jpg'),
                                      fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),


                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Cappuccino",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                          ),
                          SizedBox(height: 5,),

                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Text("with chocolate Flavour",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.black),),
                          ),
                          SizedBox(height: 15,),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text("₹ 300",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.black),),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  width: 80,
                                  height: 30,
                                  child: ElevatedButton(onPressed: (){

                                  }, child: Text("Buy"),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.brown[400],
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20)
                                        )

                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      height: 250,

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(
                                    0.3,0.3
                                ),
                                spreadRadius: 1,
                                blurRadius: 3,
                                color: Colors.black12
                            )
                          ]
                      ),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 10,right: 10,bottom: 10),
                            child: Container(

                              width: 170,
                              height: 130,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/co1.jpg'),
                                      fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),


                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Americano",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                          ),
                          SizedBox(height: 5,),

                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Text("with Suger Free",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.black),),
                          ),
                          SizedBox(height: 15,),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text("₹ 599",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.black),),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  width: 80,
                                  height: 30,
                                  child: ElevatedButton(onPressed: (){

                                  }, child: Text("Buy"),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.brown[400],
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20)
                                        )

                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      height: 250,

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(
                                    0.3,0.3
                                ),
                                spreadRadius: 1,
                                blurRadius: 3,
                                color: Colors.black12
                            )
                          ]
                      ),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 10,right: 10,bottom: 10),
                            child: Container(

                              width: 170,
                              height: 130,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/co3.jpg'),
                                      fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),


                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Espresso",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                          ),
                          SizedBox(height: 5,),

                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Text("with low milk",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.black),),
                          ),
                          SizedBox(height: 15,),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text("₹ 300",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.black),),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  width: 80,
                                  height: 30,
                                  child: ElevatedButton(onPressed: (){

                                  }, child: Text("Buy"),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.brown[400],
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20)
                                        )

                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],),
              );
      }
        ),
            SizedBox(height: 20,),
            
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Special Offer",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: FaIcon(FontAwesomeIcons.fire,color: Colors.red[400],),
              )
            ],),


          
    ]
    )
        ),
      ),
    );
  }

}
