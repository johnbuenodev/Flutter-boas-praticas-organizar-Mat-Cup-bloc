import 'package:flutter/cupertino.dart';
import 'package:flutterboaspraticascupermat/bloc/calcularbloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var bloc = new  Calcularbloc();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cálculo de IMC"),
      ),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: "Altura (cm)",
              keyboardType: TextInputType.number,
              controller: bloc.heightController,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: CupertinoTextField(
              keyboardType: TextInputType.number,
              placeholder: "Peso (kg)",
              controller: bloc.weightController,
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
            child: CupertinoButton.filled(
              onPressed: () {
                setState(() {
                  bloc.calculate();
                });

              },
              child: Text(
                "Calcular",
              ),
            ),
          )
        ],
      ),
    );
  }
}
