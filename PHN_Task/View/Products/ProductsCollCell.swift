//
//  ProductsCollCell.swift
//  PHN_Task
//
//  Created by Tushar Zade on 14/10/23.
//

import Foundation
import UIKit
import SDWebImage

class ProductsCollCell: UICollectionViewCell{
    @IBOutlet weak var cellBackground: UIView!{
        didSet{
            self.cellBackground.layer.cornerRadius = 10
//            self.cellBackground.layer.borderWidth = 1
//            self.cellBackground.layer.borderColor = UIColor.lightGray.cgColor
            self.cellBackground.clipsToBounds = true
        }
    }
    
    @IBOutlet weak var imgProduct: UIImageView!
    @IBOutlet weak var lblProductTiitle: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    
    func populate(with model: ProductsResponse) {
        lblProductTiitle.text = model.title
        lblPrice.text = "₹ \(model.price ?? 0)"
        if let images = model.images, images.count > 0{
            let url = URL(string: images[0]) /// It's sample url for explain this is an url of your current index model
            self.imgProduct.sd_setImage(with: url, placeholderImage: UIImage(named: "noImage"))
        }
    }
}
