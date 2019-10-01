import 'package:flutter/material.dart';
import 'package:my_cash_app/components.dart';
import 'package:my_cash_app/pages/home.dart';

class Gider extends StatefulWidget {
  @override
  _GiderState createState() => _GiderState();
}

class _GiderState extends State<Gider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Giderler"),
        backgroundColor: Colors.deepOrange,
        centerTitle: false,
        elevation: 1.5,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.home), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
          }),
          new IconButton(icon: Icon(Icons.add), onPressed: (){
            // Bu bölüme alert ekleme bölümü diyoruz
            showDialog(
                context: context,
                builder: (context) => new AlertDialog(
                  title: new Text("Kasaya İşlem"),
                  content: new Container(
                    height: 180.0,
                    child: new AlertComponents()
                  ),
                ));
          })
        ],
      ),
      // Navigation Bar
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Gider:"),
                subtitle: new Text("\₺1200"),
              ),
            ),
            Expanded(
              child: ListTile(
                title: new Text("Gelir:"),
                subtitle: new Text("\₺1600", style: TextStyle(color: Colors.deepOrange),),
              ),
            ),
            Expanded(
                child: new IconButton(icon: Icon(Icons.remove_red_eye, color: Colors.deepOrange,), onPressed: (){})
            ),
          ],
        ),
      ),

    );
  }
}
