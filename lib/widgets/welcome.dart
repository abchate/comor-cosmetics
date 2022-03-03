import 'package:cosmetics/Accueil.dart';
import 'package:cosmetics/widgets/SeConnecter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(

              child: Opacity(
                opacity: 0.3,
                child: Image.asset('assets/maquillage.jpg',
                fit: BoxFit.cover
                ),

              )
          ),
          Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                child:ClipOval(
                  child: Container(
                    width:200,
                    height: 200,
                    color: Colors.deepOrangeAccent,
                    alignment: Alignment.center,
                    child: Image.asset('assets/beauty.png',
                    ),


                  ),
                ),
                ),

                SizedBox(height: 20),
                Text('Comor Cosmetics',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 40),
                Padding(

                padding: EdgeInsets.all(20),
                child:FlatButton(
                  height: 50,
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => SeConnecter()
                    )
                    );
                  },
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ) ,
                  color: Colors.greenAccent.withOpacity(0.8),
                  child: Text('se connecter',
                  style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16
                  ),),

                ),
                ),
               Material(
                 color: Colors.transparent,
                 child: InkWell(
                   splashColor: Colors.green.withOpacity(0.2),
                   highlightColor: Colors.green.withOpacity(0.2),
                   onTap: () {
                     Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => Accueil()
                     )
                     );
                   },
                   child:  Container(
                     padding: EdgeInsets.all(15),
                     child: Text('click ici pour continuer sans se connecter',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                           fontSize: 15,
                           color: Colors.redAccent

                       ),
                     ),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color: Colors.transparent,
                         border: Border.all(color: Colors.transparent)
                     ),
                   ),
                 ),
               )

              ],
            ),
          )

        ],
      )
    ),

  );
  }

}