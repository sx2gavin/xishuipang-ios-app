//
//  ArticleViewController.swift
//  Xishuipang
//
//  Created by Xiangyu Luo on 2018-12-08.
//  Copyright © 2018 Chinese Gospel Church. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {

    // MARK: outlets
    @IBOutlet weak var articleStackView: UIStackView!
    @IBOutlet weak var articleScrollView: UIScrollView!
    
    // MARK: properties
    var article = Article()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadArticleContentToView()
    }
    
    // MARK: private methods
    func loadArticleContentToView() {
        
        let title = UILabel()
        title.text = article.title
        articleStackView.addArrangedSubview(title)
        
        let category = UILabel()
        category.text = article.category
        articleStackView.addArrangedSubview(category)
        
        let author = UILabel()
        author.text = article.author
        articleStackView.addArrangedSubview(author)
        
        for line in article.content {
            let lineTextView = UITextView()
            lineTextView.isScrollEnabled = false
            lineTextView.isEditable = false
            lineTextView.font = UIFont.preferredFont(forTextStyle: .body)
            lineTextView.text = line
            articleStackView.addArrangedSubview(lineTextView)
            
            // NSLayoutConstraint(item: lineTextView, attribute: .width, relatedBy: .equal, toItem: articleStackView, attribute: .width, multiplier: 1.0, constant: 0.0).isActive = true
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
