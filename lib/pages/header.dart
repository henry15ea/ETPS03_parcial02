import 'package:flutter/material.dart';

class fm_head extends StatelessWidget {
  //const fm_head({Key? key}) : super(key: key);
  fm_head(this.data);

  var data;
  @override
  Widget build(BuildContext context) {
    return _head(this.data);
  }
}

Container _head(var dt) {
  return Container(
    height: 50,
    //width: 250,
    color: Color.fromARGB(255, 255, 166, 0),
    child: Row(
      children: [
        
        Padding(
          padding: EdgeInsets.all(5),
          child: Image.network(
            "https://bostonabcd.org/wp-content/uploads/2017/09/Food-Icon-01.png",
            height: 150,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            dt.tituloPantalla,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 27, 27, 27),
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    ),
  );
}
