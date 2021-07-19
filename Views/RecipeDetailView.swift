//
//  RecipeDetailView.swift
//  RecipeApp
//
//  Created by Wafi Choudhury on 7/12/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    
var body: some View {
        
VStack(alignment:.leading){

    ScrollView{
            
            //MARK: Recipe Image
            
        VStack(alignment:.leading){
            
            Image(recipe.image)
                .resizable()
                .scaledToFit()
            
            //MARK: Ingredients
            
            VStack(alignment:.leading){
                    
                Text("Ingredients:")
                    .font(.headline)
                    .padding([.bottom,.top ], 5)

                ForEach (recipe.ingredients, id: \.self){ thing in
                    
                    Text("•" + thing)
                    
                    
                }
            
            }.padding(.horizontal)
            
            Divider()
            //MARK: Directions
            
            VStack(alignment:.leading){

                Text("Directions")
                    .font(.headline)
                    .padding([.bottom,.top ], 5)
                
                ForEach(0..<recipe.directions.count, id:\.self){index in
                    
                    Text(String(index + 1) + "•" +  recipe.directions[index])
                        .padding(.bottom, 5)
                        
                    
                }
            }.padding(.horizontal)
            
        }
    }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
}
