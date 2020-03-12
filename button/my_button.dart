import 'package:flutter/material.dart';
///自定义按钮，如登录页的登录按钮
class MyButton extends StatefulWidget{
  VoidCallback onClick;
  String title;
  bool enable;
  double width;
  MyButton({@required this.title,@required this.enable,@required this.onClick,this.width});
  @override
  _MyButtonState createState() => _MyButtonState();
}
class _MyButtonState extends State<MyButton>{
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return FlatButton(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        width: widget.width??(width*0.914),
        child: Text(widget.title,style: TextStyle(color: Colors.white,fontSize: 18),),
      ),
      color: Color.fromARGB(255,25,113,255),
      disabledColor: Color.fromARGB(77,25,113,255),
      disabledTextColor: Color.fromARGB(77,255,255,255),
      focusColor: Color.fromARGB(77,25,113,255),
      onPressed: widget.enable?widget.onClick:null,
    );
  }
}