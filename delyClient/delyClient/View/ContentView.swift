//
//  ContentView.swift
//  delyClient
//
//  Created by 小幡 十矛 on 2019/06/20.
//  Copyright © 2019 Tomu Obata. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var favorite = [String](repeating: "heart", count: APIDataCount)
    
    var body: some View {
        NavigationView{

            List() {
                ForEach(0..<10) { index in
                    HStack {
                        ForEach(0..<1) { _ in
                            VStack {
                                Image(uiImage: UIImage(url:
                                    APIDataList[index * 2]["image"]!!))
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.bottom, 8.0)
                                    .padding(.trailing, 2.0)
                                    .padding(.leading, -6.0)
                                    .overlay(
                                        HStack {
                                            Image(systemName: self.favorite[index * 2])
                                                .tapAction
                                                {
                                                    print(index * 2)
                                                    if ButtonState.firstIndex(of: index * 2) == nil{
                                                        ButtonState.insert(index * 2, at: 0)
                                                        self.favorite[index * 2] = "heart.fill"
                                                        // Lottieアニメーション
                                                        
                                                    }else {
                                                        let i = ButtonState.firstIndex(of: index * 2)
                                                        ButtonState.remove(at: i!)
                                                        self.favorite[index * 2] = "heart"
                                                    }
                                                    print(ButtonState)
                                                }
                                        }
                                        .padding()
                                        .foregroundColor(.pink)
                                        .background(Color.white.opacity(0.1)),
                                        alignment: .topTrailing
                                    )

                                Text(APIDataList[index * 2]["title"]!!)
                                    .font(.system(size: 11))
                                    .fontWeight(.bold)
                                    .lineLimit(2)
                            }
                            VStack {
                                Image(uiImage: UIImage(url:
                                    APIDataList[index * 2 + 1]["image"]!!))
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.bottom, 8.0)
                                    .padding(.trailing, -6.0)
                                    .padding(.leading, 2.0)
                                    .overlay(
                                        HStack {
                                            Image(systemName: self.favorite[index * 2 + 1])
                                                .tapAction
                                                {
                                                    print(index * 2 + 1)
                                                    if ButtonState.firstIndex(of: index * 2 + 1) == nil{
                                                        ButtonState.insert(index * 2 + 1, at: 0)
                                                        self.favorite[index * 2 + 1] = "heart.fill"
                                                        // Lottieアニメーション
                                                        
                                                    }else {
                                                        let i = ButtonState.firstIndex(of: index * 2 + 1)
                                                        ButtonState.remove(at: i!)
                                                        self.favorite[index * 2 + 1] = "heart"
                                                    }
                                                    print(ButtonState)
                                                }
                                        }
                                        .padding()
                                        .foregroundColor(.pink)
                                        .background(Color.white.opacity(0.1)),
                                        alignment: .topTrailing
                                    )
                                
                                Text(APIDataList[index * 2 + 1]["title"]!!)
                                    .font(.system(size: 11))
                                    .fontWeight(.bold)
                                    .lineLimit(2)
                            }
                        }
                    }
                }
            }
            .foregroundColor(.orange)
            .navigationBarTitle(Text("料理"))
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
