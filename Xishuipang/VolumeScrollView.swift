//
//  VolumeScrollView.swift
//  Xishuipang
//
//  Created by Xiangyu Luo on 2018-12-02.
//  Copyright © 2018 Chinese Gospel Church. All rights reserved.
//

import UIKit

class VolumeScrollView: UIScrollView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder : NSCoder) {
        super.init(coder: coder)
    }
    
    func loadContentToScrollView() {
    }
}
