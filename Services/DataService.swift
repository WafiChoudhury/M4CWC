//
//  DataService.swift
//  RecipeApp
//
//  Created by Wafi Choudhury on 7/12/21.
//

import Foundation


class DataService{
    
    
    
    static func getLocalData() -> [Recipe]{
    
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        
        
        guard pathString != nil else{
            
            return [Recipe]()
            
        }
        
        let url  = URL(fileURLWithPath: pathString!)
        
        
        let decoder = JSONDecoder()

        do{
        
             let data = try Data(contentsOf: url)

            
            
            do{
                
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                
                for r in recipeData{
                    
                    
                    r.id = UUID()
                    
                    //add unique ids to recipe ingredients
                    for i in r.ingredients{
                        
                        i.id = UUID()
                        
                    }
                }
                
                return recipeData

            }
            catch{
                
                print(error)
            }
            

        }
        catch{
            
            print(error)
        }
        
        
    
        
        //get a url path
        
        //create a url obj
        
        //create a data object
        
        //decode data object
        
        //add ids
        
        //return decoded and identified recipies
        
        
        return [Recipe]()
    }
}
