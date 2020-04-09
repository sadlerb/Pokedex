import 'package:flutter/material.dart';
import 'package:pokedex/pages/details.dart';
import 'package:pokedex/services/pokeHub.dart';
// Main page of the app

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

Map data = {};

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    Pokedata pokedata = data['data'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Pokedex'),
        backgroundColor: Colors.cyan,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: pokedata.pokemonList
            .map((poke) => Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PokeDetails(pokemon: poke)));
                    },
                    child: Hero(
                      tag: poke.imageUrl,
                      child: Card(
                        elevation: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(poke.imageUrl))),
                            ),
                            Text(
                              '${poke.name[0].toUpperCase()}${poke.name.substring(1)}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
