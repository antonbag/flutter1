import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/pelicula_model.dart';
import 'package:flutter_application_1/src/providers/peliculas_provider.dart';
import 'package:flutter_application_1/src/search/search_delegate.dart';
import 'package:flutter_application_1/src/widgets/card_swiper_widget.dart';
import 'package:flutter_application_1/src/widgets/movie_horizontal.dart';

class MarianoPage extends StatelessWidget {
  //const HomePage({Key key}) : super(key: key);

  final peliculasProvider = new PeliculasProvider();

  @override
  Widget build(BuildContext context) {

    peliculasProvider.getPopulares();

    return Scaffold(
      appBar: AppBar(
        title: Text("Pelis Home", style: TextStyle(color: Colors.white60)),
        backgroundColor: Colors.brown[600],
        elevation: 1,
        centerTitle: true,
        actions: [

          IconButton(
              icon: Icon(Icons.search),
              color: Colors.white60,
              onPressed: () {
                showSearch(
                  context: context, 
                  delegate: DataSearch()
                );
              })
       
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                'En cartelera',
                style: Theme.of(context).textTheme.headline5,
                overflow: TextOverflow.clip,
              ),
            ),
            _swiperTarjetas(context),
            //_swiperPopulares(),
            _footer(context),

/*             TextButton(
                child: Text('Película detalle'),
                onPressed: () => Navigator.pushNamed(context, 'detalle')) */
          ],
        ),
      ),
    );
  }

  Widget _swiperTarjetas(context) {
    final peliculasProvider = new PeliculasProvider();

    peliculasProvider.getEnCines();

    return FutureBuilder(
        future: peliculasProvider.getEnCines(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Pelicula>> snapshot) {
          if (snapshot.hasData) {
            return CardSwiper(peliculas: snapshot.data!);
          } else {
            return Container(
              height: 400,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });

    //return Container(width: 500, height: 250, color: Colors.grey);
  }


/* 

  Widget _swiperPopulares() {
    final _populares = Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: EdgeInsets.only(left: 15, top: 40, bottom: 10),
            child: Text("muy rápido"))
      ],
    ));

    return _populares;
  }

 */


  Widget _footer(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              color: Colors.black26,
              width: double.infinity,
              padding:
                  EdgeInsets.only(top: 12, bottom: 10, left: 15, right: 15),
              child: Text("Populares asdf",
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.justify),
            ),
/* 
            FutureBuilder(
                future: peliculasProvider.getPopulares(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Pelicula>> snapshot) {
                  //print(snapshot.data!.first.title);
                  if (snapshot.hasData) {
                    return MovieHorizontal(peliculas: snapshot.data!);
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }

                  //return Container();
                }),
                 */
            StreamBuilder(
                stream: peliculasProvider.ppStream,
                builder: (BuildContext context,
                    AsyncSnapshot<List<Pelicula>> snapshot) {
                  //print(snapshot.data!.first.title);
                  if (snapshot.hasData) {
                    
                    return MovieHorizontal(
                      peliculas: snapshot.data as List<Pelicula>, 
                      siguientePagina: peliculasProvider.getPopulares);
                      
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }

                  //return Container();
                })
          ],
        ));
  }
}
