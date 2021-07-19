//
//  RecipeTabView.swift
//  RecipeApp
//
//  Created by Wafi Choudhury on 7/18/21.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView{
        
        Text("hey")
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
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
