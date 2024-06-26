import 'package:flutter/material.dart';

class Avaibalescreen extends StatefulWidget {
  final String size;
  const Avaibalescreen({super.key,required this.size});

  @override
  State<Avaibalescreen> createState() => _AvaibalescreenState();
}

class _AvaibalescreenState extends State<Avaibalescreen> {
  bool isSelected=false;
  @override
  Widget build(BuildContext context)=>GestureDetector(
    onTap: (){
      setState(() {
        isSelected=!isSelected;
      });
    },
    child: Container(
      margin: EdgeInsets.only(right: 16.0),
      width: 40,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color:isSelected? Colors.red:Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.red)
      ),
      child: Text(widget.size,style: TextStyle(fontWeight: FontWeight.bold),),
    ),
  );
}