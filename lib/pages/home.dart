import 'package:flutter/material.dart';
// benim importlarım

import 'package:my_cash_app/components.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // buranın amacı bize ekranın genişliğini sağlamaktır
    final mediaQuerydata = MediaQuery.of(context);
    final size = mediaQuerydata.size.width;

    return Scaffold(
      appBar: AppBar(
        title: new Text("E-Cüzdan"),
        backgroundColor: Colors.deepOrange,
        centerTitle: false,
        elevation: 1.5,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.add), onPressed: (){
            // Bu bölüme alert ekleme bölümü diyoruz
            showDialog(
                context: context,
                builder: (context) => new AlertDialog(
                  title: new Text("Kasaya İşlem"),
                  content: new Container(
                    height: 180.0,
                    child: AlertComponents(),
                  ),
                ));
          })
        ],
      ),

      body: new Stack(children: <Widget>[
        Center(
          child: ListTile(
            title: new Icon(Icons.account_balance_wallet, size:  64.0, color: Colors.green),
            subtitle: new Padding(padding: EdgeInsets.only(left: size / 4.1),
                child: new Text("Paranı Dikkatsiz Harcama!", style: TextStyle(fontSize: 16.0),)),
          ),
        )
      ],),
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
