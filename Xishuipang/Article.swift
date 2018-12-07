//
//  Article.swift
//  Xishuipang
//
//  Created by Xiangyu Luo on 2018-12-06.
//  Copyright © 2018 Chinese Gospel Church. All rights reserved.
//

import Foundation

class Article : NSObject {
    
    var title = "这是一篇文章"
    var category = "这篇文章有这样的目录"
    var author = ""
    var imagesPaths = [String]()
    var content = [String]()
    
    override init()
    {
        super.init()
    }
}
