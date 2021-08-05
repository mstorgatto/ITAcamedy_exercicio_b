import 'package:flutter/material.dart';
import 'adder.dart';

class telaPrincipal extends StatefulWidget {
  const telaPrincipal({Key? key}) : super(key: key);

  @override
  _telaPrincipalState createState() => _telaPrincipalState();
}

class _telaPrincipalState extends State<telaPrincipal> {
  int? numero1, numero2;
  Adder? numeros = null;
  String resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora que só soma"),),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "numero1",
            ),
            onChanged: (value) => setState(() => numero1 = int.tryParse(value)),
          ),
          TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "numero2",
            ),
            onChanged: (value) => setState(() => numero2 = int.tryParse(value)),
          ),
          TextButton(
            onPressed:
              (numero1==null || numero2==null)
                  ? null
                  : () => setState(() => resultado = "Resultado: ${Adder(numero1!,numero2!).somar.toString()}"),
            child: Text("SOMA"),
          ),
          Text (
              "$resultado",
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Text("SOMA"),
      //   onPressed: (){
      //     Adder numeros = Adder(numero1,numero2);
      //   },
      // ),

    );
  }
}

