import 'package:flutter/material.dart';

class RegrasLayouts extends StatefulWidget {
  const RegrasLayouts({super.key});

  @override
  State<RegrasLayouts> createState() => _RegrasLayoutsState();
}

class _RegrasLayoutsState extends State<RegrasLayouts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Wrap", style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.green,
        child: LayoutBuilder(
            builder: (context, constraint){
              var largura = constraint.maxWidth;
              print("Largura disponivel: $largura");

              if ( largura < 600){
                return Text("Celulares");

              } else if (largura < 960){
                return Text("Celulares maiores e tablets");

              } else{

                return Text("Outros dispositivos");

              }

              // return Container(
              //   child: Text("TESTANDO"),
              // );
            },
        ),
      ),
    );
  }
}
