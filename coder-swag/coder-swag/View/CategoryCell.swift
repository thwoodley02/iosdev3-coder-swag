//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Tom Woodley on 25/06/2020.
//  Copyright © 2020 Tom Woodley. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
