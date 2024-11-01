import 'package:flutter/material.dart';

class ResponsividadeRowColumn extends StatefulWidget {
  const ResponsividadeRowColumn({super.key});

  @override
  State<ResponsividadeRowColumn> createState() => _ResponsividadeRowColumnState();
}

class _ResponsividadeRowColumnState extends State<ResponsividadeRowColumn> {
  @override
  Widget build(BuildContext context) {

    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsividade", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          // Container(
          //   color: Colors.red,
          //   height: 200,
          // ),
          Expanded(
            flex: 1,
              child: Container(
                color: Colors.orange,
              ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.purple,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
