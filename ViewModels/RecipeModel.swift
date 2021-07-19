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
    
    
    
}
