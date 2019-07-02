//
//  FavoriteList.swift
//  delyClient
//
//  Created by 小幡 十矛 on 2019/06/24.
//  Copyright © 2019 Tomu Obata. All rights reserved.
//

import SwiftUI

struct FavoriteList : View {
    @State var ButtonStateList: [Int] = ButtonState

    var body: some View {
        NavigationView{
            
            List() {
                ForEach(0..<ButtonState.count/2) { index in
                    HStack {
                        ForEach(0..<1) { _ in
                            VStack {
                                Image(uiImage: UIImage(url:
                                    APIDataList[ButtonState[index * 2]]["image"]!!))
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.bottom, 8.0)
                                    .padding(.trailing, 2.0)
                                    .padding(.leading, -6.0)
                                Text(APIDataList[ButtonState[index * 2]]["title"]!!)
                                    .font(.system(size: 11))
                                    .fontWeight(.bold)
                                    .lineLimit(2)
                            }
//                            if index != ButtonState.count + 2 {
                            VStack {
                                Image(uiImage: UIImage(url:
                                    APIDataList[ButtonState[index * 2 + 1]]["image"]!!))
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.bottom, 8.0)
                                    .padding(.trailing, -6.0)
                                    .padding(.leading, 2.0)
                                
                                Text(APIDataList[ButtonState[index * 2 + 1]]["title"]!!)
                                    .font(.system(size: 11))
                                    .fontWeight(.bold)
                                    .lineLimit(2)
                            }
//                            }
                        }
                    }
                }
                }
                .foregroundColor(.orange)
                .navigationBarTitle(Text("お気に入り  　件数：\(ButtonState.count)"))
            
        }

    }
}

#if DEBUG
struct FavoriteList_Previews : PreviewProvider {
    static var previews: some View {
        FavoriteList()
    }
}
#endif
