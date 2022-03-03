import 'package:cosmetics/widgets/formulaire.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeConnecter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(
           title: Text(
               'Connexion'

           ),
           centerTitle: true,
           backgroundColor: Colors.green,
         ),


         body: SingleChildScrollView(
           child: Container(

             padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
             child: Form(

               child: Column(
                   crossAxisAlignment: CrossAxisAlignment.stretch,
                   mainAxisAlignment: MainAxisAlignment.center,

                   children:<Widget>[

                     TextFormField(

                         decoration: InputDecoration(
                             labelText: 'Email',
                             border: OutlineInputBorder()
                         )
                     ),

                     SizedBox(height: 10.0),
                     TextFormField(
                       decoration: InputDecoration(
                           labelText: 'mot de passe',
                           border: OutlineInputBorder()
                       ),
                       obscureText: true,
                     ),

                     SizedBox(height: 10.0),
                     OutlineButton(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20.0),
                       ),
                       onPressed: (){

                       },
                       borderSide: BorderSide(width: 1.0, color: Colors.green),
                       child: Text(
                         'Enregistrer',
                         style: TextStyle(color: Colors.green),

                       ),


                     ),
             Material(
               color: Colors.transparent,
               child: InkWell(
                   splashColor: Colors.green.withOpacity(0.2),
                   highlightColor: Colors.green.withOpacity(0.2),
                   onTap: () {
                     Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => formulaire()
                     )
                     );
                   },
                   child:Container(

                       padding: EdgeInsets.all(15),
                       child: Text('click ici pour créer un Compte',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                             fontSize: 12,
                             color: Colors.red

                         ),
                       ),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(50),
                           color: Colors.transparent,
                           border: Border.all(color: Colors.white, width: 0)
                       ),
                     ),
               )
             )]

               ),
             ),
           ),
         )
     );
  }

}