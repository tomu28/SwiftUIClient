//
//  getAPIData.swift
//  delyClient
//
//  Created by 小幡 十矛 on 2019/06/22.
//  Copyright © 2019 Tomu Obata. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

var APIDataList: [[String: String?]] = []

var selectTitle: String!
var selectImage: URL!

var APIDataCount = 5

class getAPIData {
    
    func getAPI() {
        print("APIをゲット")
        
        let _ = Alamofire.request("https://s3-ap-northeast-1.amazonaws.com/data.kurashiru.com/videos_sample.json").responseJSON {
            response in guard let object = response.result.value else {
                return
            }
            let json = JSON(object)
            
            // JSONのdataオブジェクトを取り出す
            let dataObject = json["data"]
            
            dataObject.forEach {(key, dataObject) in
                let APIData: [String: String?] = [
                    "title": dataObject["attributes"]["title"].string,
                    "image": dataObject["attributes"]["thumbnail-square-url"].string
                ]
                APIDataList.append(APIData)
                APIDataCount = APIDataList.count
                
                print(APIData)
                print(APIDataCount)
            }
        }
    }
    
}
