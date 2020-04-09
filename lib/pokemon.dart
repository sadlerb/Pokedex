import 'package:pokedex/services/type.dart';


class Pokemon {
  String name;
  int id;
  int weight;
  int height;
  String imageUrl = '';
  List<Type> type = List();


  Pokemon(String name, int id, int weight, int height, List type) {
    this.name = name;
    this.id = id;
    this.height = height;
    this.weight = weight;

    for (int i = 0; i < type.length; i++) {
      this.type.add(Type(type[i]['type']['name']));
      
    }
    this.type = this.type.reversed.toList();

    StringBuffer url = StringBuffer();

    url.write('https://assets.pokemon.com/assets/cms2/img/pokedex/full/');
    if (id >= 1 && id < 10) {
      url.write('00$id');
    } else if (id >= 10 && id < 100) {
      url.write('0$id');
    } else {
      url.write(id);
    }

    url.write('.png');
    this.imageUrl = url.toString();
  }
}
