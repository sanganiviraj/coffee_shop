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

