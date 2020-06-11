import 'package:flutter/material.dart';
import 'package:flutterboaspraticascupermat/bloc/calcularbloc.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var bloc = new Calcularbloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cálculo de IMC"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Altura (cm)",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: bloc.heightController,
            ),
          ),
          Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: bloc.weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Peso (kg)",
                  border: OutlineInputBorder(),
                ),
              ),),
          Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                bloc.result,
                textAlign: TextAlign.center,
              ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    bloc.calculate();
                  });

                },
                color: Theme.of(context).primaryColor,
                child: Text(
                  "Calcular",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
            ),
          )
        ],
      ),
    );
  }
}
