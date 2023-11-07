import 'package:flutter/material.dart';
import 'package:klima/screens/location_screen.dart';
import 'package:klima/services/weather.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';






class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoadingScreenState createState() => _LoadingScreenState();
}

 class _LoadingScreenState extends State<LoadingScreen> {


   @override
   void initState() {
     super.initState();
     print('this line of code is triggered');
     getLocationData();
   }


   void getLocationData() async {

    var weatherData =await WeatherModel().getLocation();


     //print(weatherData);

     Navigator.push(context, MaterialPageRoute(builder: (context){

       return LocationScreen(locationWeather: weatherData,);
     }));







   }


   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: SpinKitDoubleBounce(
           color: Colors.white,
           size: 100.0,
         ),
       ),
     );
   }
 }
