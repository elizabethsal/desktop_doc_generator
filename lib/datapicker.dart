import 'package:flutter/material.dart';

class DataPicker {

  void showDataPickerData(){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1940),
        lastDate: DateTime(2030),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: MaterialButton(
      onPressed: showDataPickerData,
      child: const Padding(
        padding: EdgeInsets.all(10),
        child:  Text('Выберите дату', style: TextStyle(color: Colors.white, fontSize: 10)),
      )
    )));
  }
}
