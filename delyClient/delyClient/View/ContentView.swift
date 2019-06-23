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
            ForEach(0..<10) { index in
                HStack {
                    ForEach(0..<1) { _ in
                        VStack {
                            Image(uiImage: UIImage(url:
                                APIDataList[index * 2]["image"]!!))
                                .resizable()
                                .scaledToFit()
                            Text(APIDataList[index * 2]["title"]!!)
                        }
                        VStack {
                            Image(uiImage: UIImage(url:
                                APIDataList[index * 2 + 1]["image"]!!))
                                .resizable()
                                .scaledToFit()
                            Text(APIDataList[index * 2 + 1]["title"]!!)
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
