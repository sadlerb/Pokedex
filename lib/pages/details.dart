import 'package:flutter/material.dart';
import 'package:pokedex/services/pokemon.dart';
// Detail page for a soecific pokemon

class PokeDetails extends StatelessWidget {
  final Pokemon pokemon;// The pokemon the page is based on

  PokeDetails({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '${pokemon.name[0].toUpperCase()}${pokemon.name.substring(1)}'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        elevation: 0.0,
      ),
      backgroundColor: Colors.cyan,
      body: Stack(
        children: <Widget>[
          Positioned(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width - 20,
            left: 10.0,
            top: MediaQuery.of(context).size.height * 0.1,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(),
                  Text(
                    'Height: ${pokemon.height} cm',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Weight: ${pokemon.weight} kg',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Type',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.type
                        .map((t) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                               
                                height: 30.0,
                                width: 75.0,
                                child: Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                  child: Center(
                                    child: Text(t.name
                                      ,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                  color: t.color,
                                  elevation: 0.0,
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                  Text('Evolutions')
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
                tag: pokemon.imageUrl,
                child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(pokemon.imageUrl))))),
          )
        ],
      ),
    );
  }
}
