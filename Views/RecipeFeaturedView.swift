//
//  RecipeFeaturedView.swift
//  RecipeApp
//
//  Created by Wafi Choudhury on 7/20/21.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    
    @EnvironmentObject var Model:RecipeModel
    @State var isDetailViewShowing = false
    
    var body: some View {

        
        VStack(alignment:.leading, spacing:0){
            
        Text("featured Recipes")
            .bold()
            .padding(.leading)
            .padding(.top,40)
            .font(.largeTitle)
        
        GeometryReader{ geo in
        
        TabView{
            
            ForEach(0..<Model.recipes.count){ index in
                
                if(Model.recipes[index].featured==true){
                    
                    
                    //Recipe Card Button
                    
                    Button(action: {
                        
                        self.isDetailViewShowing = true
                        
                    }, label: {
                        
                        ZStack {
                            
                            
                            Rectangle()
                                .foregroundColor(.white)
                            
                            VStack(spacing:0){
                                Image(Model.recipes[index].image)
                                    .resizable()
                                    .clipped()
                                    .aspectRatio(contentMode: .fill)
                                Text(Model.recipes[index].name)
                                    .padding(5)
                                
                                
                                
                            }
                        }
                        
                    })
                    .sheet(isPresented: $isDetailViewShowing ){
                        
                        RecipeDetailView(recipe: Model.recipes[index])
                        
                    }

                    .buttonStyle(PlainButtonStyle())
                    .frame(width: geo.size.width-40, height: geo.size.height-100, alignment: .center)
                    .cornerRadius(15)
                    .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5),radius: 10,  x:-5, y:5)

                    
                }

                
            }
            
            
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .indexViewStyle(PageIndexViewStyle (backgroundDisplayMode:.always))
        
        }
        
            VStack(alignment:.leading, spacing:20){
                
                Text("Prep Time")
                    .font(.headline)
                Text("1 hour")
                Text("Highlights")
                    .font(.headline)
                Text("healthy")
            }.padding([.leading, .bottom])

        }
        
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView().environmentObject(RecipeModel())
    }
}
