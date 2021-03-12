import 'package:flutter/material.dart';

class ControlPage extends StatefulWidget {
  @override
  createState() {
    return _ControlPageState();
  }
}

class _ControlPageState extends State<ControlPage> {
  final _estilo = TextStyle(fontSize: 30);
  int _vertical = 0;
  int _horizontal = 0;
  var texto = '';
  var orientacion = '';
  var posicionActual = 4;
  var posicionColor = [];
  var colores = [100, 100, 100, 100, 100, 100, 100, 100, 100, 100];

  int _girar = 1;

  void validar() {
    if (_vertical > 2) {
      texto = "Esta en el limite";
      _vertical = 0;
      _horizontal = 0;
    }
    if (_vertical < 0) {
      _vertical = 0;
      _horizontal = 0;
      texto = "Esta en el limite";
    }
    if (_horizontal > 2) {
      texto = "Esta en el limite";
      _vertical = 0;
      _horizontal = 0;
    }
    if (_horizontal < 0) {
      _vertical = 0;
      _horizontal = 0;
      texto = "Esta en el limite";
    }
  }

  void matriz(h, v) {
    posicionColor = [h, v];
    if (h == 0 && v == 2) {
      colores[0] = 500;

      colores[1] = 100;
      colores[2] = 100;
      colores[3] = 100;
      colores[4] = 100;
      colores[5] = 100;
      colores[6] = 100;
      colores[7] = 100;
      colores[8] = 100;
    }
    if (h == 1 && v == 2) {
      colores[1] = 500;

      colores[0] = 100;
      colores[2] = 100;
      colores[3] = 100;
      colores[4] = 100;
      colores[5] = 100;
      colores[6] = 100;
      colores[7] = 100;
      colores[8] = 100;
    }
    if (h == 2 && v == 2) {
      colores[2] = 500;

      colores[0] = 100;
      colores[1] = 100;
      colores[3] = 100;
      colores[4] = 100;
      colores[5] = 100;
      colores[6] = 100;
      colores[7] = 100;
      colores[8] = 100;
    }
    if (h == 0 && v == 1) {
      colores[3] = 500;

      colores[0] = 100;
      colores[1] = 100;
      colores[2] = 100;
      colores[4] = 100;
      colores[5] = 100;
      colores[6] = 100;
      colores[7] = 100;
      colores[8] = 100;
    }
    if (h == 1 && v == 1) {
      colores[4] = 500;

      colores[0] = 100;
      colores[1] = 100;
      colores[2] = 100;
      colores[3] = 100;
      colores[5] = 100;
      colores[6] = 100;
      colores[7] = 100;
      colores[8] = 100;
    }
    if (h == 2 && v == 1) {
      colores[5] = 500;

      colores[0] = 100;
      colores[1] = 100;
      colores[2] = 100;
      colores[3] = 100;
      colores[4] = 100;
      colores[6] = 100;
      colores[7] = 100;
      colores[8] = 100;
    }
    if (h == 0 && v == 0) {
      colores[6] = 500;

      colores[0] = 100;
      colores[1] = 100;
      colores[2] = 100;
      colores[4] = 100;
      colores[5] = 100;
      colores[7] = 100;
      colores[3] = 100;
      colores[8] = 100;
    }
    if (h == 1 && v == 0) {
      colores[7] = 500;

      colores[0] = 100;
      colores[1] = 100;
      colores[2] = 100;
      colores[4] = 100;
      colores[5] = 100;
      colores[6] = 100;
      colores[8] = 100;
      colores[3] = 100;
    }
    if (h == 2 && v == 0) {
      colores[8] = 500;

      colores[0] = 100;
      colores[1] = 100;
      colores[2] = 100;
      colores[4] = 100;
      colores[5] = 100;
      colores[6] = 100;
      colores[7] = 100;
      colores[3] = 100;
    }
  }

  void validarGirar() {
    if (_girar > 4) {
      setState(() {
        _girar = 1;
      });
    }
    if (_girar < 1) {
      setState(() {
        _girar = 4;
      });
    }
    switch (_girar) {
      case 1:
        orientacion = "Top";
        break;
      case 2:
        orientacion = "Right";
        break;
      case 3:
        orientacion = "Bottom";
        break;
      case 4:
        orientacion = "Left";
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Examen1_Flutter_MiniRaza'),
          centerTitle: true,
        ),
        body: Center(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(50),
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 3,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.indigo[colores[0]],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.indigo[colores[1]],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.indigo[colores[2]],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.indigo[colores[3]],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.indigo[colores[4]],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.indigo[colores[5]],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(2, 37, 2, 20),
                child: new Text(
                  'ORIGEN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontSize: 20.0, fontFamily: 'Karla'),
                ),
                color: Colors.indigo[colores[6]],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.indigo[colores[7]],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.indigo[colores[8]],
              ),

              //Contenedores de botones
              Container(
                padding: const EdgeInsets.all(8),
                //NO lleva nada
              ),

              Container(
                padding: const EdgeInsets.all(8),
                child: FlatButton(
                    child: Text("A"),
                    onPressed: () {
                      setState(() {
                        _vertical++;
                        validar();
                        matriz(_horizontal, _vertical);
                      });
                    }),
                color: Colors.yellow,
              ),

              Container(
                padding: const EdgeInsets.all(8),
                //no lleva nada
              ),

              Container(
                padding: const EdgeInsets.all(8),
                child: FlatButton(
                    child: Text("I"),
                    onPressed: () {
                      setState(() {
                        _horizontal--;
                        validar();
                        matriz(_horizontal, _vertical);
                      });
                    }),
                color: Colors.blue,
              ),

              Container(
                padding: const EdgeInsets.all(8),
                //No lleva
              ),

              Container(
                padding: const EdgeInsets.all(8),
                child: FlatButton(
                    child: Text("D"),
                    onPressed: () {
                      setState(() {
                        _horizontal++;
                        validar();
                        matriz(_horizontal, _vertical);
                      });
                    }),
                color: Colors.red,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                //No lleva
              ),

              Container(
                padding: const EdgeInsets.all(8),
                child: FlatButton(
                    child: Text("Ab"),
                    onPressed: () {
                      setState(() {
                        _vertical--;
                        validar();
                        matriz(_horizontal, _vertical);
                      });
                    }),
                color: Colors.green,
              ),
              Container(
                padding: const EdgeInsets.all(8),
              ),
              Text("Posición"),
              Text("$posicionColor"),
            ],
          ),
        ));

    /*child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _conteo++;
          });
        },*/
  }
}
