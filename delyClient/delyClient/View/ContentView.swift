//
//  ContentView.swift
//  delyClient
//
//  Created by 小幡 十矛 on 2019/06/20.
//  Copyright © 2019 Tomu Obata. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var selection = 0
    
    var body: some View {
        TabbedView(selection: $selection) {

            RecipeList()
                .tabItemLabel(
                    VStack
                    {
                        Image("recipeIcon")
                        Text("レシピ")
                    }
                ).tag(0)
            
            FavoriteList()
                .tabItemLabel(
                    VStack {
                        Image("favoriteIcon")
                        Text("お気に入り")
                    }
                ).tag(1)
            
        }
    }

}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
