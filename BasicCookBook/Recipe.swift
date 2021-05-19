//
//  Recipe.swift
//  BasicCookBook
//
//  Created by bean Milky on 2021/05/19.
//

import Foundation
import UIKit

struct Recipe {
  let name: String
  let description: String
  let image: UIImage

  static func all() -> [Recipe] {
    return [
      Recipe(name: "Pizza", description: """
        Pizza is a savory dish of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and various other ingredients (anchovies, olives, meat, etc.) baked at a high temperature, traditionally in a wood-fired oven. In formal settings, like a restaurant, pizza is eaten with knife and fork, but in casual settings it is cut into wedges to be eaten while held in the hand. Small pizzas are sometimes called pizzettas.

        The term pizza was first recorded in the 10th century in a Latin manuscript from the Southern Italian town of Gaeta in Lazio, on the border with Campania. Modern pizza was invented in Naples, and the dish and its variants have since become popular in many countries.

        It has become one of the most popular foods in the world and a common fast food item in Europe and North America, available at pizzerias (restaurants specializing in pizza), restaurants offering Mediterranean cuisine, and via pizza delivery. Many companies sell ready-baked frozen pizzas to be reheated in an ordinary home oven.

        The Associazione Verace Pizza Napoletana (lit. True Neapolitan Pizza Association) is a non-profit organization founded in 1984 with headquarters in Naples that aims to promote traditional Neapolitan pizza. In 2009, upon Italy's request, Neapolitan pizza was registered with the European Union as a Traditional Speciality Guaranteed dish, and in 2017 the art of its making was included on UNESCO's list of intangible cultural heritage.
        """, image: #imageLiteral(resourceName: "Pizza")),
      Recipe(name: "Spaghetti", description: """
        Spaghetti is a long, thin, solid, cylindrical pasta. Spaghettoni is a thicker form of spaghetti, while capellini is a very thin spaghetti. It is a staple food of traditional Italian cuisine. Like other pasta, spaghetti is made of milled wheat and water and sometimes enriched with vitamins and minerals.

        Authentic Italian spaghetti is made from durum wheat semolina, but elsewhere it may be made with other kinds of flour. Typically the pasta is white because refined flour is used, but whole wheat flour may be added.

        Originally, spaghetti was notably long, but shorter lengths gained in popularity during the latter half of the 20th century and now it is most commonly available in 25–30 cm (10–12 in) lengths. A variety of pasta dishes are based on it, and it is frequently served with tomato sauce or meat or vegetables.
        """, image: #imageLiteral(resourceName: "Spaghetti")),
      Recipe(name: "Meatballs", description: """
        A meatball is ground meat rolled into a small ball, sometimes along with other ingredients, such as bread crumbs, minced onion, eggs, butter, and seasoning. Meatballs are cooked by frying, baking, steaming, or braising in sauce. There are many types of meatballs using different types of meats and spices. The term is sometimes extended to meatless versions based on vegetables or fish; the latter are commonly known as fishballs.
        """, image: #imageLiteral(resourceName: "Meatballs")),
      Recipe(name: "Cookies", description: """
        A cookie is a baked or cooked food that is small, flat and sweet. It usually contains flour, sugar and some type of oil or fat. It may include other ingredients such as raisins, oats, chocolate chips, nuts, etc.

        In most English-speaking countries except for the United States and Canada, crisp cookies are called biscuits. Chewier biscuits are sometimes called cookies even in the United Kingdom. Some cookies may also be named by their shape, such as date squares or bars.

        Cookies or biscuits may be mass-produced in factories, made in small bakeries or homemade. Biscuit or cookie variants include sandwich biscuits, such as custard creams, Jammie Dodgers, Bourbons and Oreos, with marshmallow or jam filling and sometimes dipped in chocolate or another sweet coating.

        Cookies are often served with beverages such as milk, coffee or tea. Factory-made cookies are sold in grocery stores, convenience stores and vending machines. Fresh-baked cookies are sold at bakeries and coffeehouses, with the latter ranging from small business-sized establishments to multinational corporations such as Starbucks.
        """, image: #imageLiteral(resourceName: "Cookies"))
    ]
  }
}
