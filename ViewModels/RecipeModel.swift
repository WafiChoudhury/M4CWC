//
//  RecipeModels.swift
//  RecipeApp
//
//  Created by Wafi Choudhury on 7/12/21.
//

import Foundation

class RecipeModel:ObservableObject{
    
    @Published var recipes = [Recipe]()
    
    //create instance of dataService
    
    
    init(){
        
        
        self.recipes = DataService.getLocalData()
    
    }
    
    static func getPortion(ingredient:Ingredient, recipeServings:Int, targetServings:Int) ->String{
        
        //get a single serving size my mult denom by recipes servings, get target portion my mult num by target servings and then reduce by GCD
        
        var portion  = ""
        
        var wholePortion = 0
        var denom = ingredient.denom ?? 1
        var num = ingredient.num ?? 1
        
        if(ingredient.num != nil){
            
          denom = denom * recipeServings
          num*=targetServings
          
            let divisor  = Rational.greatestCommonDivisor(num, denom)
            
            num /= divisor
            denom /= divisor
            
            if num>denom{
                
                wholePortion = num/denom
                
                num = num % denom
                
                portion += String(wholePortion)
                
            }
            

          
        } 
        else{
            
            
            
        }
    
        
        var fac = Int(num/denom)
        
        
        
    
        
        
        return "hey"
        
    }
    
}
