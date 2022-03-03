import 'package:badges/badges.dart';
import 'package:cosmetics/models/category.dart';
import 'package:cosmetics/models/subCategory.dart';
import 'package:cosmetics/widgets/shoppingCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detailpage extends StatefulWidget{


  subCategory? subcategory;
  String? nom;
  String? imgName;
  int? amount = 0;
  int? price = 200;
  int? cost = 0;
  int? pdt = 0;

  detailpage({this.nom, this.imgName});
  @override
  detailPageState createState() => detailPageState();
}

class detailPageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar:AppBar(
        title: Text(
          widget.nom!,
          style: TextStyle(
            color: Colors.deepOrange,


          ),

        ),
        backgroundColor: Colors.transparent,
        elevation: 8.8,

      ),
      body: Column(
        children: <Widget>[
          new Container(

               height: 300,
               width: double.infinity,

              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.white,

                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        offset: Offset.zero,
                        color: Colors.black.withOpacity(0.5)
                    )
                  ]
              ),



              child: Padding(padding:
            const EdgeInsets.all(10),




              child: new Image.asset(
                  'assets/'+ widget.imgName!,


                ),




            )

      ),
          //new Text(widget.nom!, style: TextStyle(fontSize: 30)
          //),
          Container(
            height: 50,

            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            decoration: BoxDecoration(
              color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset.zero,
                      color: Colors.black.withOpacity(0.8)
                    )
                ]
            ),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    incrementCounter();
                  },
                  child: Icon(Icons.add_circle_outline,
                      size: 30,
                      color: Colors.red
                  ),
                ),
                Expanded(
                  child:Padding (
                    padding: const EdgeInsets.only(bottom: 10),
                         child:Center(
                             child:Text.rich(
                    TextSpan(
                      children:[
                        TextSpan(text: widget.amount.toString(),style: TextStyle(fontSize: 20)),
                        TextSpan(text: 'produits', style: TextStyle(fontSize: 10),

                        ) ]
                    ) )
                  )
               )
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      widget.amount= widget.amount!- 1;
                      widget.cost =  widget.price! * widget.amount! ;
                    });




                  },
                  child: Icon(Icons.remove_circle_outline,
                    size: 30,
                    color: Colors.black,

                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: 'Prix: '),
                        TextSpan(text: widget.price.toString()+'  KMF/pdt' ,
                        style: TextStyle(fontWeight: FontWeight.bold)
                        )
                      ]
                    )
                ),
                Text(widget.cost.toString() +'KMF',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          SizedBox(height: 40),
          Container(

            width: double.infinity,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Material(
                color: Colors.deepOrange,
                child: InkWell(
                  splashColor: Colors.orange.withOpacity(0.2),
                  highlightColor: Colors.orange.withOpacity(0.2),
                  onTap: (){
                    setState(() {



                      widget.pdt = (widget.pdt! + 1);
                    });

                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Text('ajouter au panier',
                    textAlign: TextAlign.center,
                      style: TextStyle(

                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    ),

                  ),
                ),
              ),
            ),
          )
    ],


      ),


      floatingActionButton: FloatingActionButton(

          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => shoppingCart(
                  imgName: widget.imgName,
                  nom: widget.nom,
                  cost: widget.cost,
                  amount: widget.amount,
                ),
              ),
            );

          },
       child: Badge( badgeContent: Text( widget.pdt.toString(), style: TextStyle(color: Colors.white),),
          badgeColor: Colors.black,
          child: const Icon(Icons.shopping_cart, size: 30,),

        ),
      backgroundColor: Colors.deepOrange,



)
    );


  }



  void incrementCounter() {
    setState(() {
      widget.amount= widget.amount!+ 1;
      widget.cost =  widget.price! * widget.amount! ;
    });
  }




}