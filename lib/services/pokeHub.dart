import 'package:http/http.dart';
import 'dart:convert';

import 'package:pokedex/services/pokemon.dart';



class Pokedata {
List<Pokemon> pokemonList = new List();
String url = 'https://pokeapi.co/api/v2/pokemon/';
int id;

  Future addPokemon(int id)async{
    
    this.id = id;
    Response response = await get(url + '$id');
    Map data = jsonDecode(response.body);
    String name =  (data['name']);
    int height = (data['height']);
    int weight =  (data['weight']);
    List type =  (data['types']);
    Pokemon pokemon = Pokemon(name,id,weight,height,type);

    pokemonList.add(pokemon);
    print('pokemon $id registered');
  }

}
