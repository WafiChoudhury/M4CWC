//
//  RecipeTabView.swift
//  RecipeApp
//
//  Created by Wafi Choudhury on 7/18/21.
//

import SwiftUI

struct RecipeTabView: View {
    
    @EnvironmentObject var Model:RecipeModel
    
    
    var body: some View {
        
        TabView{
        
        RecipeFeaturedView()
            .tabItem {
                
                VStack{
                    
                    Image(systemName: "star.fill")
                    Text("featured")
                    
                }
            }

            RecipeListView().tabItem {
                
                
                VStack{
                    Image(systemName: "list.bullet")
                    Text("list")
                }
            }
        }.environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
