//
//  Ingredient.swift
//  RecipeApp
//
//  Created by Wafi Choudhury on 7/19/21.
//

import Foundation

class Ingredient: Identifiable, Decodable{
    
    var id:UUID?
    var name: String
    var num: Int?
    var denom: Int?
    var unit: String?
    
}
