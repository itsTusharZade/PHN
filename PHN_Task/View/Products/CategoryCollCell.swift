//
//  CategoryCollCell.swift
//  PHN_Task
//
//  Created by Tushar Zade on 14/10/23.
//

import Foundation
import UIKit
import SDWebImage

class CategoryCollCell: UICollectionViewCell{
    @IBOutlet weak var cellBorderVIew: UIView!{
        didSet{
            self.cellBorderVIew.layer.cornerRadius = 10
//            self.cellBorderVIew.layer.borderWidth = 1
//            self.cellBorderVIew.layer.borderColor = UIColor(named: "buttonBackground")?.cgColor
            self.cellBorderVIew.clipsToBounds = true
        }
    }
    
    @IBOutlet weak var imgCategory: UIImageView!
    @IBOutlet weak var lblCategory: UILabel!
    
    func populate(with model: Category) {
        lblCategory.text = model.name ?? ""
        let url = URL(string: model.image!)
        self.imgCategory.sd_setImage(with: url, placeholderImage: UIImage(named: "noImage"))
    }
}
