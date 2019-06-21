//
//  ContentView.swift
//  delyClient
//
//  Created by 小幡 十矛 on 2019/06/20.
//  Copyright © 2019 Tomu Obata. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        
        List() {
            // ここでUINatigationBar
            ForEach(0..<8) { _ in
                // 縦
                HStack {
                    ForEach(0..<2) {_ in
                        // 横
                        VStack {
                        Image("SwiftUI")
                            .resizable()
                            .scaledToFit()
                            .padding(.bottom, 8.0)
                            .padding(.top, 12.0)
                        Text("タイトル")
                            .font(.subheadline)
                            .lineLimit(2)
                            .padding(.bottom, 24.0)
                        }
                    }
                }
            }
        }
        .padding(.horizontal,-10.0)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
