import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("card"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          children: [
            _cardTipo1(),
            SizedBox(height: 20),
            _cardTipo2(context),
          ],
        ));
  }

  Widget _cardTipo1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10.0,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.access_alarm_outlined,color:Colors.blueAccent),
            title: Text("tarjeta 1"),
            subtitle: Text('''
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
              '''),
            ),
            FadeInImage(
              placeholder: AssetImage('assets/img/jar-loading.gif'), 
              image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/3d/Paisaje_de_Bernardo_Larroude_(La_Pampa).jpg'),
              height: 200.0,
              fit: BoxFit.cover
            ),

            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {}, child: Text("cancel")
                ),
                TextButton(
                  onPressed: () {}, child: Text("okay")
                )
              ] 
            )
      ]
    ),
    );
  }


  Widget _cardTipo2(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10.0,
      color: Colors.amber,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.access_alarm_outlined,color:Colors.blueAccent),
            title: Text("tarjeta 2", style: Theme.of(context).textTheme.headline3),
            subtitle: Text('''
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
              '''),
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: FadeInImage(
                placeholder: AssetImage('assets/img/jar-loading.gif'), 
                image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/3d/Paisaje_de_Bernardo_Larroude_(La_Pampa).jpg'),
                height: 200.0,
                fit: BoxFit.cover
              ),
            ),

            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {}, child: Text("cancel")
                ),
                TextButton(
                  onPressed: () {}, child: Text("okay")
                )
              ] 
            )
      ]
    ),
    );
  }



}
