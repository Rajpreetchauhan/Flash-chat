import 'package:flutter/material.dart';

class TextFiledarea extends StatefulWidget {
  var kloginreisterbuttontext;
  var kloginreisterbuttoncolor;
  var onpressed;
  TextFiledarea(
      {@required this.kloginreisterbuttontext,
      @required this.kloginreisterbuttoncolor,
      this.onpressed});

  @override
  State<TextFiledarea> createState() => _TextFiledareaState();
}

class _TextFiledareaState extends State<TextFiledarea> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: widget.kloginreisterbuttoncolor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: widget.onpressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            widget.kloginreisterbuttontext,
          ),
        ),
      ),
    );
  }
}
