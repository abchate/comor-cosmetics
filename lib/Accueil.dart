

import 'package:cosmetics/helpers/utils.dart';
import 'package:cosmetics/models/category.dart';
import 'package:cosmetics/widgets/Button.dart';
import 'package:cosmetics/widgets/categoryCard.dart';
import 'package:cosmetics/widgets/selectedCategoryPage.dart';
import 'package:cosmetics/widgets/shoppingCard.dart';
import 'package:cosmetics/widgets/welcome.dart';
import 'package:flutter/material.dart';
import 'package:cosmetics/main.dart';


class Accueil extends StatelessWidget {
  var drawerItems;
 List<category> categories = utils.getMockedCategories();




  @override
  Widget build(BuildContext context) {
    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('nom '),
      accountEmail: Text('email@example.com'),
      decoration: BoxDecoration (
        color:  Colors.black,

      ),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.photo_camera, size: 70, color: Colors.white,),

      ),

    );
    final drawerItems = ListView(
        children: <Widget>[
          drawerHeader,
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Acceuil'),
            onTap: () {
              Navigator.pop(context);
            }


          ),
          ListTile(
              leading: const Icon(Icons.account_box_rounded),
            title: const Text('Profil'),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => welcome())
              );

            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart_outlined),
            title: const Text('mon panier'),
            onTap: (){
              Navigator.pop(context);


            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_applications_rounded),
            title: const Text('parametre'),
            onTap: (){
              Navigator.pop(context);


            },

          ),
          ListTile(
            leading: const Icon(Icons.info_outline_rounded),
            title: const Text('A propos'),
            onTap: (){
              Navigator.pop(context);


            },
          ),
          SizedBox(height: 200),
          ListTile(
            tileColor: Colors.deepOrange.withOpacity(0.8),
            leading: const Icon(Icons.logout),
            title: const Text('Déconnexion'),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MyApp())
              );

            },


          )
        ]
    );
    return Scaffold(

      appBar: AppBar(
        title: Text(
            'Comor Cosmetics',
            style: TextStyle(
            color: Colors.black,


        ),

        ),
        backgroundColor: Colors.deepOrange,
        elevation: 8.8,

      /*actions: <Widget>[
        IconButton(icon: Icon(Icons.search),
          onPressed: (){

          }_ç
        )
      ],*/
      ),
        drawer: Drawer(
          child: drawerItems,



        ),
     body:Container(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Padding(
             padding: const EdgeInsets.only(top: 10, bottom: 10),
            child:Text('Selectionner une categorie',
           textAlign: TextAlign.center,
           style: TextStyle(color: Colors.black),
           ),
          ),
           Expanded(
               child: ListView.builder( 
                 padding: EdgeInsets.only(bottom: 100),
                   itemCount:categories.length ,
                   itemBuilder: (BuildContext ctx, int index){
                     return categoryCard(cat: categories[index],
                       onCardClick: (){
                       Navigator.push(
                           context,
                           MaterialPageRoute(
                             builder: (context) => selectedCategoryPage(
                           selectedCategory: this.categories[index],
                             )

                         )
                       );
                       }
                     );

                   },
               ),
           )
         ],
       )

     ),
      floatingActionButton:button(

      ),
    );


    
  }
}
class SplashPage extends StatelessWidget{
int duration= 0;
Widget goToPage ;

SplashPage({required this.goToPage, required this.duration});





  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => this.goToPage)
    );

    });


    return Scaffold(
      body: Container(
        color: Colors.transparent,
          child: Stack(
            children: [
          Positioned.fill(


            child: Image.asset('assets/lang.jpg',
                fit: BoxFit.cover
            ),

          )

             /* Center(
          child:
           Icon(Icons.shopping_cart, color: Colors.white, size: 200),*/





  ]
    )
    ),
    );
  }

}
