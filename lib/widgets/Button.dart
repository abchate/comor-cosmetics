import 'package:badges/badges.dart';
import 'package:cosmetics/widgets/detailpage.dart';
import 'package:cosmetics/widgets/shoppingCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class button extends StatefulWidget{
  /*String? nom;
  String? imgName;
  int? price;
  int? amount;
  int? cost;
  int? pdt;
  detailpage? nbr;


  button({this.nom, this.imgName, this.amount, this.cost, this.nbr, this.pdt});*/

  @override
  Button createState() => Button();

}
class Button extends State<button> {
  get  nbrs => detailpage().pdt;
  get  nom => detailpage().nom;
  get  imgName => detailpage().imgName;
  get  amount => detailpage().amount;
  get  cost => detailpage().cost;

  @override
  Widget build(BuildContext context) {
    return
         FloatingActionButton(

          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => shoppingCart(
                  imgName: imgName!,
                  nom: nom,
                  cost: cost,
                  amount: amount,
                ),
              ),
            );

          },
          child: Badge( badgeContent: Text(this.nbrs!.toString(), style: TextStyle(color: Colors.white),),
            badgeColor: Colors.black,
            child: const Icon(Icons.shopping_cart, size: 30,),

          ),
          backgroundColor: Colors.deepOrange,



        );

  }

}