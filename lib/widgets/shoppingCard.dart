import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class shoppingCart extends StatefulWidget {
  String? nom;
  String? imgName;
  int? price;
  int? amount;
  int? cost;

  shoppingCart({this.nom, this.imgName, this.amount, this.cost});

  @override
  shoppingCartState createState() => shoppingCartState();

}
class shoppingCartState extends State<shoppingCart> {
  @override
  Widget build(BuildContext context) {

    final list = <Widget>[
    ListTile(
      leading:  Image.asset('assets/'+ widget.imgName!),
          title: Text(widget.nom!),
      subtitle: Text(widget.cost!.toString()) ,
      trailing: Badge( badgeContent: Text(widget.amount!.toString(), style: TextStyle(color: Colors.white),),
          badgeColor: Colors.black,
      child:Icon(Icons.shopping_cart_outlined,
      color: Colors.orangeAccent,)
      )
    ),
    ];
   return Scaffold(
       appBar: AppBar(
       title: Text(
       'Mon PANIER',
       style: TextStyle(
       color: Colors.deepOrange,


   ),

    ),
    backgroundColor: Colors.pinkAccent,
    elevation: 8.8,
       ),
     body:  ListView(children: list),
     bottomNavigationBar: Container(



       height: 174,
       decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)
           ),
           boxShadow:[ BoxShadow(
         
         offset: Offset(0, -15),
             blurRadius:20,
             color: Colors.white.withOpacity(0.15)
       )]),
         child: Row(

       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Text.rich(
             TextSpan(
                 text: 'MONTANT: ',
               children: [
             TextSpan(text: widget.cost!.toString() + ' KMF ',
                 style: TextStyle(fontWeight: FontWeight.bold
                 )
             )
                 ],


             )
         ),
         SizedBox(
             child:Container(

                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: ClipRRect(
    borderRadius: BorderRadius.circular(50),
                 child: Material(
                    color: Colors.deepOrange,
                  child: InkWell(
    splashColor: Colors.orange.withOpacity(0.2),
    highlightColor: Colors.orange.withOpacity(0.2),
                    child: Container(
    padding: EdgeInsets.all(15),
                      child: Text('Commander',
    textAlign: TextAlign.center,
    style: TextStyle(

    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.bold
    )
    ),

    ),
    )
    )
              )
    )
         )
       ],
     ),
   ),
     );


  }








}