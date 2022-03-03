import 'package:badges/badges.dart';
import 'package:cosmetics/helpers/utils.dart';
import 'package:cosmetics/models/category.dart';
import 'package:cosmetics/widgets/Button.dart';
import 'package:cosmetics/widgets/detailpage.dart';
import 'package:cosmetics/widgets/shoppingCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'categoryCard.dart';

class selectedCategoryPage extends StatelessWidget{
  category? selectedCategory;
  selectedCategoryPage({this.selectedCategory});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text(
            'Comor Cosmetics',
            style: TextStyle(
              color: Colors.black,


            ),

          ),
          backgroundColor: Colors.deepOrange,
          elevation: 8.8,

        ),
      body: Container(

        child: Column(
          
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
        Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child:Text(this.selectedCategory!.name!,

          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
              SizedBox(height: 30),
              Expanded(



                  child: GridView.count(
                      crossAxisCount: 2,
                          mainAxisSpacing: 15.0,
                          crossAxisSpacing: 15.0,




                          children:List.generate(this.selectedCategory!.subcategories!.length,
                                  (index) {
                            return GestureDetector(
                              onTap: (){
                               // utils.getMockedCategories()[index].subcategories![index];
                                //var subCat = this.selectedCategory!.subcategories![index];
                                //utils.mainAppNav.currentState!.pushNamed('/detailspage');*/
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => detailpage(
                                          imgName: this.selectedCategory!.subcategories![index].imgName!,
                                            nom: this.selectedCategory!.subcategories![index].name!
                                        )

                                    )
                                );

                                //var subCa = this.selectedCategory!.subcategories![index];
                               /* catSelection.selectedSubCategory = cartService.getCategoryFromCart(subCat as Subcategory);
                                utils.mainAppNav.currentState!.pushNamed('/detailspage');*/



                              },
                              child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 2),
                              color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 10,
                                        offset: Offset.zero,
                                        color: Colors.black.withOpacity(0.5)
                                    )
                                  ]



                              ),


                         child: Container(
                           child: Center(


                                child: Column(



                                  children: [

                                         Image.asset(
                                          'assets/' + this.selectedCategory!.subcategories![index].imgName!,
                                          fit: BoxFit.cover, width: 100, height: 100,
                                        ),
                                    SizedBox( height: 15),
                                    Text(this.selectedCategory!.subcategories![index].name!,
                                        style: TextStyle(color: this.selectedCategory!.color)
                                    )

                                  ],
                                ) ),
                          ),
                              )
                            );

                                  }
                          )

                  )
                )

      ],
        )

    ),
        floatingActionButton:button(

        ),
          );




  }

}