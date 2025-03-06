import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //prepa1: como se va a organizar
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //número de columnas
        crossAxisCount: 2),
      //cuántos elementos}

      itemCount: 4,
      padding: const EdgeInsets.all(12),  
      //Qué elemento se construirá
      itemBuilder: (context, index){
          return;
      });
  }
}