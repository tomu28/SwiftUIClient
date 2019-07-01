//
//  SwiftUIButton.swift
//  delyClient
//
//  Created by 小幡 十矛 on 2019/07/01.
//  Copyright © 2019 Tomu Obata. All rights reserved.
//

import SwiftUI
// 画像の上にボタンを設置する実装
// この時、ボタンのみにactionが実行されるか確認

struct SwiftUIButton : View {
    var body: some View {
        Button(action: {
            print("Tap!!")
        }, label: {
            Image(systemName: "heart")
            Text("Click Me")
            Text("Subtitle")
        })
            .foregroundColor(Color.pink)
            .padding()
            .background(Color.blue)
            .cornerRadius(5)
    }
}

#if DEBUG
struct SwiftUIButton_Previews : PreviewProvider {
    static var previews: some View {
        SwiftUIButton()
    }
}
#endif
