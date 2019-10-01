import 'package:flutter/material.dart';
import 'package:my_cash_app/pages/gelir.dart';
import 'package:my_cash_app/pages/gider.dart';
import 'package:my_cash_app/pages/kategori.dart';
class AlertComponents extends StatefulWidget {
  @override
  _AlertComponentsState createState() => _AlertComponentsState();
}

class _AlertComponentsState extends State<AlertComponents> {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        // Bu bölümde buton işlemi eklenmiştir bu butona ek gelir ekleme özelliği sağlanmıştır
        new Row(children: <Widget>[new Padding(padding: EdgeInsets.all(4.0),
          child: Icon(Icons.attach_money),),
          new Padding(padding: EdgeInsets.all(2.0),
            child: new MaterialButton(onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new Gelir()));

              },
              child: new Text("Gelir Ekle"),
            ),),
        ],
        ),

        // Bu bölümde buton işlemi eklenmiştir bu butona ek gider ekleme özelliği sağlanmıştır
        new Row(children: <Widget>[new Padding(padding: EdgeInsets.all(4.0),
          child: Icon(Icons.money_off),),
          new Padding(padding: EdgeInsets.all(2.0),
            child: new MaterialButton(onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new Gider()));
              }, child: new Text("Gider Ekle"),
            ),),
        ],
        ),
        // buraya yeni bir kategori eklenmesini olanak sağlar
        new Row(children: <Widget>[new Padding(padding: EdgeInsets.all(4.0),
          child: Icon(Icons.dashboard),),
          new Padding(padding: EdgeInsets.all(2.0),
            child: new MaterialButton(onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new Kategori()));
              }, child: new Text("Kategori"),
            ),),
        ],
        )
      ],
    );
  }
}
