import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  
  //list of donuts
  final List donutsOnSale = [
    //[donutFlavor, donutStore donutPrice, donutColor, imageName]
    ["Ice Cream", "Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Dunkin Donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Pollos hermanos", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Tizimin Donuts", "95", Colors.brown, "lib/images/chocolate_donut.png"]
  ];
  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //prepa1: como se va a organizar
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //número de columnas
        crossAxisCount: 2,
        //Proporción entre ancho y alto
        childAspectRatio: 1/1.5),

      //cuántos elementos
      itemCount: 4,
      padding: const EdgeInsets.all(12),  
      //Qué elemento se construirá
      itemBuilder: (context, index){
          return DonutTile(
          donutFlavor:donutsOnSale[index][0],
          donutStore: donutsOnSale [index][1],
          donutPrice:donutsOnSale[index][2],
          donutColor:donutsOnSale[index][3],
          imageName:donutsOnSale[index][4],
          );
      });
  }
}