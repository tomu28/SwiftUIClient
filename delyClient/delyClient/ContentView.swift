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
            ForEach(0..<8) { _ in
                HStack {
                    ForEach(0..<2) {_ in
                        VStack {
                            Image("SwiftUI")
                                .resizable()
                                .scaledToFit()
                            Text("タイトル")
                                .font(.title)
                        }
                    }
                }
            }
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
