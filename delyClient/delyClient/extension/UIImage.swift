//
//  UIImage.swift
//  delyClient
//
//  Created by 小幡 十矛 on 2019/06/22.
//  Copyright © 2019 Tomu Obata. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    public convenience init(url: String) {
        let url = URL(string: url)
        do {
            let data = try Data(contentsOf: url!)
            self.init(data: data)!
            return
        } catch let err {
            print("Error : \(err.localizedDescription)")
        }
        self.init()
    }
}
