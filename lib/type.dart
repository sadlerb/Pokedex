import 'dart:ui';

import 'package:flutter/material.dart';

class Type{

  String name;
  Color color;

  Type(String name){
    name = name[0].toUpperCase() + name.substring(1);
    this.name = name;

    switch (name) {
      case 'Grass' : {this.color = Colors.green;}
        break;
      case 'Poison': {this.color = Colors.purple[300];}
        break;
      case 'Fire' : {this.color = Colors.red[400];}
        break;
      case 'Water': {this.color = Colors.lightBlue;}
        break;
      case 'Flying' :{this.color = Colors.cyan[400];}
        break;
      case 'Fighting' :{this.color = Colors.red[900];}
        break;
      case 'Ground' :{this.color = Colors.amber[300];}
        break;
      case 'Rock' :{this.color = Colors.yellowAccent[400];}
        break;
      case 'Bug' :{this.color = Colors.limeAccent[100];}
        break;
      case 'Ghost' :{this.color = Colors.indigo[400];}
        break;
      case 'Electric' :{this.color = Colors.yellow;}
        break;
      case 'Psychic' :{this.color = Colors.pink[400];}
        break;
      case 'Ice' :{this.color = Colors.lightBlue[100];}
        break;
      case 'Dragon' :{this.color = Colors.deepPurpleAccent[100];}
        break;
      case 'Dark' :{this.color = Colors.brown[600];}
        break;
      case 'Steel' :{this.color = Colors.grey[300];}
        break;
      case 'Fairy' :{this.color = Colors.pink[200];}
        break;
      case 'Normal' :{this.color = Colors.grey;}
        break;
      default: {this.color = Colors.black;}
      
    
      
    }


  }

}