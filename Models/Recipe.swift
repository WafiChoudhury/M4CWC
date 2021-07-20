//
//  Recipie.swift
//  RecipeApp
//
//  Created by Wafi Choudhury on 7/12/21.
//

import Foundation

class Recipe: Identifiable, Decodable{
    
    
    
        
        var id:UUID?
        var name:String
        var featured:Bool
        var image:String
        var description:String
        var prepTime: String
        var cookTime: String
        var servings:Int
        var highlights: [String]
        var ingredients:[Ingredient]
        var directions:[String]
        
        
        
        
        
    
    
    
}
