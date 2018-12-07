//
//  VolumeScrollView.swift
//  Xishuipang
//
//  Created by Xiangyu Luo on 2018-12-02.
//  Copyright © 2018 Chinese Gospel Church. All rights reserved.
//

import UIKit

@IBDesignable class ArticleScrollView: UIScrollView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var article = Article()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadArticleToView()
    }
    
    required init?(coder : NSCoder) {
        super.init(coder: coder)
        loadArticleToView()
    }
    func loadArticleToView() {
        let title = UILabel(frame: CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height))
        title.text = article.title
        addSubview(title)
        
        let category = UILabel(frame: CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height))
        category.text = article.category
        addSubview(category)
    }
}
