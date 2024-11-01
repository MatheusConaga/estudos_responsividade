import 'package:flutter/material.dart';

class Orientacao extends StatefulWidget {
  const Orientacao({super.key});

  @override
  State<Orientacao> createState() => _OrientacaoState();
}

class _OrientacaoState extends State<Orientacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Orientação", style: TextStyle(color: Colors.white),),
      ),
      body: OrientationBuilder(
          builder: (context,orientacao){
            // return Container(
            //   child: orientacao == Orientation.portrait
            //   ? Text("Dispositivo em Pé")
            //   : Text("Dispositivo Deitado")
            // );
          return GridView.count(
              crossAxisCount: orientacao == Orientation.portrait
            ? 2 : 4,
            children: [
              Container(color: Colors.red,),
              Container(color: Colors.purple,),
              Container(color: Colors.lightBlueAccent,),
              Container(color: Colors.redAccent,),
              Container(color: Colors.tealAccent,),
              Container(color: Colors.purpleAccent,),
            ],
          );

          }
      ),
    );
  }
}
