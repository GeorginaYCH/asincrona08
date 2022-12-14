import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class ScrollScreen extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
 return Scaffold(
  backgroundColor: Color(0xFF30BAD5),
 body: Container(
  decoration: BoxDecoration(
    gradient:LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5,0.5],
      colors:[
        Color(0xFF7EEBCB),
        Color(0xFF30BAD6),

      ]),
  ),
   child: PageView(
    physics:BouncingScrollPhysics(),
    scrollDirection:Axis.vertical,
    children:[
      Page1(),
      Page2(),
    ],
   ),
 ),
  );
 }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
         //background
         Background(),

         //Main Content
         MainContent(),
        ],
      );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 60,fontWeight: FontWeight.bold, color: Colors.green);
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('11°', style: textStyle,),
          Text('Miércoles', style: textStyle),
          Expanded(child: Container(),),
          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.green,),

        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF30BAD5),
      height: double.infinity,
      alignment: Alignment.center,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        ),
        );
  }
}
class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF30BAD5),
      child: Center(
        child: TextButton(
          onPressed: (){},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40) ,
            child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 40),),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: StadiumBorder(),
            ),
        ),
      ),
    );
  }
}