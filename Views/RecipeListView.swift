//
//  ContentView.swift
//  RecipeApp
//
//  Created by Wafi Choudhury on 7/12/21.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var Model:RecipeModel

    var body: some View {
        
        NavigationView {
            List(Model.recipes){ r in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe: r),
                    label: {

                        HStack{
                            
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                            Text(r.name)
                            

                        }


                    })
                    
                    
                }
                
               
                
                
            }.navigationBarTitle("All Recipies")
    }
    }


struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
