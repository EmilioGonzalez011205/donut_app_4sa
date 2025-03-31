import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {

  final String donutFlavor;
  final String donutPrice;
  final String donutStore;
  //dynamic porque será de tipo color
  final dynamic donutColor;
  final String imageName;
  
    const DonutTile({super.key, 
  required this.donutFlavor,
  required this.donutStore, 
  required this.donutPrice, 
  required this.donutColor, 
  required this.imageName}
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        //color: donutColor[50],
        decoration: BoxDecoration(
          color: donutColor[50],
          //Esquinas redondeadas
          borderRadius: BorderRadius.circular(24),),
          child: Column(
            children: [
              Row(
                //Alinea los precios a la derecha
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24)),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8,
                    horizontal: 18),
                    child:Text(
                      "\$$donutPrice",
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: donutColor[800],
                    ) 
                  ),
                ),
              ],
            ),
            //Donut price
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                  child: Image.asset(imageName),
                ),
                //Donut flavor text
                SizedBox(height: 10,),
                Text(donutFlavor,
                  style: TextStyle(
                    color:donutColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),),
                //Espacio entre cada texto o elemento
                SizedBox(height: 10,),
                Text(donutStore,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                )),
                //Icons 
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.favorite_border_outlined,
                      size: 28,
                      color: Colors.red,),
                      Text("Add", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline
                      ),)
                    ],
                  ),
                )
      ]
    ),
  )
);
  }
}