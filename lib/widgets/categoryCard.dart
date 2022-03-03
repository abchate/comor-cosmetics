
import 'package:cosmetics/models/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
// ignore: camel_case_types
class categoryCard extends StatelessWidget{

  category? cat;
  Function? onCardClick;

  categoryCard({required this.cat, required this.onCardClick});

  @override
  Widget build(BuildContext context) {
     return 
     GestureDetector(
      onTap: (){
        this.onCardClick!();
      },
      child:
     Container(
        margin: EdgeInsets.all(20),
        height: 150,
        child: Stack(
          children: [
            Positioned.fill(

              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child:Image.asset('assets/' + this.cat!.imgName!,
                  fit: BoxFit.cover,

                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  height: 120 ,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)

                      ),

                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.7),
                            Colors.transparent
                          ]
                      )



                  )
              ),


            ),
            Positioned(
              bottom:0,
              child:Padding(
                padding: const EdgeInsets.all(10),
                child:Row(
                  children: [
                    ClipOval(
                        child:Container(
                          
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.shopping_cart, size: 30),


                        )
                    ),
                    SizedBox(width: 10),
                    Text(this.cat!.name!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25
                      ),
                    )
                  ],
                ),
              ),
            )

          ],
        ),
     )
    );

  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<category>('cat', cat));
  }
} 