import 'package:flutter/material.dart';
import 'package:parallax_swiper/parallax_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ParallaxDemo(),
    );
  }
}

class ParallaxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var bg = Container(
      height: 600,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset('assets/image.png',height: 200,),
          SizedBox(height: 250,),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(color: Colors.redAccent,width: 5.0),
            ),
            child: Text('Select Player',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,color: Colors.redAccent),),
          )
        ],
      ),
    );



    var characterOne = Container(
      height: 600,
      width: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/image1.png', height: 250,),
          SizedBox(height: 20,),
          Text('Player 1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        ],
      ),
    );


    var characterTwo = Container(
      height: 600,
      width: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/image2.png',height: 250,),
          SizedBox(height: 20,),
          Text('Player 2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        ],
      ),
    );


    var characterThree = Container(
      height: 600,
      width: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/image3.png',height: 250,),
          SizedBox(height: 20,),
          Text('Player 3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        ],
      ),
    );


    var characterFour = Container(
      height: 600,
      width: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/image4.png',height: 250,),
          SizedBox(height: 20,),
          Text('Player 4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child:ParallaxSwiper(
            backgroundWidget: bg,
            foregroundWidgets:<Widget>[characterOne, characterTwo,characterThree,characterFour],
          swiperDuration: Duration(milliseconds: 1500),
          swipeDirection: Axis.horizontal,
          swiperCurve: Curves.easeOutBack,
          swiperInitialPage: 0,
          returnDuration: Duration(milliseconds: 2000),
          backgroundRotationFactor: 0.01,
          foregroundTranslationFactor: 0.01,
        ),
      ),
    );
  }
}

















