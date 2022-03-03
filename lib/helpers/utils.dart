import 'package:cosmetics/models/category.dart';
import 'package:cosmetics/models/subCategory.dart';

import 'package:flutter/material.dart';


class utils{
  static List<category> getMockedCategories(){
    return[
    category(
      name: 'Parfum',
      color: Colors.amber,
      imgName: "parfum.jpeg",
      subcategories:[
        subCategory(
          name: 'parfum1',
          color: Colors.amber,
          imgName: 'parfum1.jpg'


        ),
        subCategory(
            name: 'parfum2',
            color: Colors.amber,
            imgName: 'parfum3.jpg'
        ),
        subCategory(
            name: 'parfum3',
            color: Colors.amber,
            imgName: 'parfum4.jpg'
        ),
        subCategory(
            name: 'parfum',
            color: Colors.amber,
            imgName: 'p1.jpg'
        ),
        subCategory(
            name: 'parfum',
            color: Colors.amber,
            imgName: 'p2.jpg'
        ),
        subCategory(
            name: 'parfum',
            color: Colors.amber,
            imgName: 'p3.jpg'
        ),
        subCategory(
            name: 'parfum',
            color: Colors.amber,
            imgName: 'p4.jpg'
        ),
        subCategory(
            name: 'parfum',
            color: Colors.amber,
            imgName: 'p5.jpg'
        ),
      ]
    ),
        category(
          name: 'Maquillages',
          color: Colors.red,
          imgName: "maquillage.jpg",
          subcategories: [
            subCategory(
                name: 'Rouge à levres',
                color: Colors.red,
                imgName: 'levres.jpg'
            ),
            subCategory(
                name: 'maquillage',
                color: Colors.red,
                imgName: 'm.jpg'
            ),
            subCategory(
                name: 'maquillage',
                color: Colors.red,
                imgName: 'm1.jpg'
            ),
            subCategory(
                name: 'maquillage',
                color: Colors.red,
                imgName: 'm2.jpg'
            ),
            subCategory(
                name: 'maquillage',
                color: Colors.red,
                imgName: 'm4.jpg'
            ),
            subCategory(
                name: 'maquillage',
                color: Colors.red,
                imgName: 'm5.jpg'
            ),
            subCategory(
                name: 'maquillage',
                color: Colors.red,
                imgName: 'm6.png'
            ),
            subCategory(
                name: 'maquillage',
                color: Colors.red,
                imgName: 'm7.jpg'
            ),
            subCategory(
                name: 'maquillage',
                color: Colors.red,
                imgName: 'm8.jpg'
            ),
            subCategory(
                name: 'maquillage',
                color: Colors.red,
                imgName: 'm3.jpg'
            ),
          ]
      ),
      category(
          name: 'Soins',
          color: Colors.black,
          imgName: "soin.jpeg",
          subcategories: [
            subCategory(
                name: 'soins',
                color: Colors.black,
                imgName: 'soin.jpg'
            ),
            subCategory(
                name: 'soins',
                color: Colors.black,
                imgName: 'soin2.jpg'
            ),
            subCategory(
                name: 'soins',
                color: Colors.black,
                imgName: 'soin3.jpg'

            ),
            subCategory(
                name: 'soins',
                color: Colors.black,
                imgName: 'soin4.jpg'
            ),
            subCategory(
                name: 'soins',
                color: Colors.black,
                imgName: 's1.jpeg'
            ),
            subCategory(
                name: 'soins',
                color: Colors.black,
                imgName: 's2.jpg'
            ),
            subCategory(
                name: 'soins',
                color: Colors.black,
                imgName: 's3.jpg'
            ),
            subCategory(
                name: 'soins',
                color: Colors.black,
                imgName: 's4.jpg'
            ),
            subCategory(
                name: 'soins',
                color: Colors.black,
                imgName: 's5.jpg'
            ),
            subCategory(
                name: 'soins',
                color: Colors.black,
                imgName: 's6.jpg'
            ),
          ]
      ),
      category(
          name: 'Corps et Bain',
          color: Colors.purple,
          imgName: "bain.jpg",
          subcategories: [
            subCategory(
                name: 'bain1',
                color: Colors.black,
                imgName: 'bain1.jpg'
            ),
            subCategory(
                name: 'bain',
                color: Colors.black,
                imgName: 'bain3.jpg'
            ),
            subCategory(
                name: 'bain',
                color: Colors.black,
                imgName: 'b1.jpg'
            ),
            subCategory(
                name: 'bain',
                color: Colors.black,
                imgName: 'b2.jpg'
            ),
            subCategory(
                name: 'bain',
                color: Colors.black,
                imgName: 'b3.jpg'
            ),
            subCategory(
                name: 'bain',
                color: Colors.black,
                imgName: 'b4.jpg'
            ),
            subCategory(
                name: 'bain',
                color: Colors.black,
                imgName: 'b5.jpg'
            ),
            subCategory(
                name: 'bain',
                color: Colors.black,
                imgName: 'b6.jpg'
            ),
          ]
      ),
      category(
          name: 'Cheveux',
          color: Colors.green,
          imgName: "cheveux.jpg",
          subcategories: [
            subCategory(
                name: 'cheveux1',
                color: Colors.black,
                imgName: 'chev.jpg'
            ),
            subCategory(
                name: 'cheveux2',
                color: Colors.black,
                imgName: 'chev1.jpg'
            ),
            subCategory(
                name: 'cheveux3',
                color: Colors.black,
                imgName: 'chev2.jpg'
            ),
            subCategory(
                name: 'cheveux4',
                color: Colors.black,
                imgName: 'chev3.jpg'
            ),
            subCategory(
                name: 'cheveux4',
                color: Colors.black,
                imgName: 'chev4.jpg'
            ), subCategory(
                name: 'cheveux4',
                color: Colors.black,
                imgName: 'chev5.png'
            ),
            subCategory(
                name: 'cheveux4',
                color: Colors.black,
                imgName: 'chev6.jpeg'
            ), subCategory(
                name: 'cheveux4',
                color: Colors.black,
                imgName: 'chev7.jpg'
            ), subCategory(
                name: 'cheveux4',
                color: Colors.black,
                imgName: 'chev8.jpg'
            ), subCategory(
                name: 'cheveux4',
                color: Colors.black,
                imgName: 'chev10.jpg'
            ),
          ]
      ),
      category(
          name: 'Accessoirs',
          color: Colors.lightBlueAccent,
          imgName: "accessoirs.jpg",
          subcategories: [
            subCategory(
                name: 'accessoir',
                color: Colors.black,
                imgName: 'acc1.jpg'
            ),
            subCategory(
                name: 'accessoir',
                color: Colors.black,
                imgName: 'acc2.jpeg'
            ),
            subCategory(
                name: 'accessoir',
                color: Colors.black,
                imgName: 'acc3.png'
            ),
            subCategory(
                name: 'accessoir',
                color: Colors.black,
                imgName: 'acc4.jpg'
            ),
            subCategory(
                name: 'accessoir',
                color: Colors.black,
                imgName: 'acc5.jpg'
            ),
            subCategory(
                name: 'accessoir',
                color: Colors.black,
                imgName: 'acc6.jpg'
            ),
          ]
      ),
    ];

  }
}