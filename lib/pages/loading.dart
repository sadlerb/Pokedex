import 'package:flutter/material.dart';
import 'package:pokedex/services/pokeHub.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupHome()async{
    Pokedata data = Pokedata();
  for(int i = 1; i < 10; i++){

     await data.addPokemon(i);
  }
  

  Navigator.pushReplacementNamed(context, '/home',arguments: {
    'data': data
  });


  }



 @override
void initState(){

  super.initState();
  setupHome();

    

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: SpinKitFadingCube (
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}

  



