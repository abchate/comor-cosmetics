import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class formulaire extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'Formulaire'

          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),








        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
            child: Form(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children:<Widget>[
                    TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Nom',
                            border: OutlineInputBorder()
                        )
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Prenom',
                            border: OutlineInputBorder()
                        )
                    ),
                    SizedBox(height: 10.0),
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
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'confirmer le mot de passe',
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
                      borderSide: BorderSide(width: 1.0, color: Colors.blue),
                      child: Text(
                        'Enregistrer',
                        style: TextStyle(color: Colors.blue),

                      ),

                    )]
              ),
            ),
          ),
        )
    );
  }

}