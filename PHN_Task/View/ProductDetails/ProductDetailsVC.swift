//
//  ProductDetailsVC.swift
//  PHN_Task
//
//  Created by Tushar Zade on 14/10/23.
//

import UIKit
import FSPagerView
import SDWebImage

class ProductDetailsVC: UIViewController {
    
    @IBOutlet weak var lblProductTitle: UILabel!
    @IBOutlet weak var lblItemDescription: UILabel!
    @IBOutlet weak var lblItemTitle: UILabel!
    @IBOutlet weak var lblItemPrice: UILabel!
    @IBOutlet weak var stkItemDecription: UIStackView!
    @IBOutlet weak var imgCategory: UIImageView!
    @IBOutlet weak var lblCategory: UILabel!
    
    @IBOutlet weak var pagerView: FSPagerView! {
        didSet {
            self.pagerView.delegate = self
            self.pagerView.dataSource = self
            self.pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        }
    }
    
    
    
    @IBOutlet weak var pageControl: FSPageControl! {
        didSet {
            if let data = product, let images = data.images{
                self.pageControl.numberOfPages = images.count
            }
            self.pageControl.contentHorizontalAlignment = .left
            self.pageControl.setFillColor(.background, for: .selected)
            self.pageControl.setFillColor(.buttonBackground, for: .normal)
            self.pageControl.contentInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
    }
    
    var product : ProductsResponse?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        if let product = self.product{
            self.lblProductTitle.text = product.title ?? ""
            self.lblItemTitle.text = product.title ?? ""
            self.lblItemPrice.text = "₹\(product.price ?? 0)"
            if let description = product.description{
                self.lblItemDescription.text = description
                self.stkItemDecription.isHidden = description.isEmpty ? true : false
            }else{
                self.stkItemDecription.isHidden = true
            }
            
            if let category = product.category{
                self.imgCategory.sd_setImage(with: URL(string: category.image ?? ""), placeholderImage: UIImage(named: "noImage"))
                self.lblCategory.text = category.name ?? ""
            }
        }
    }
    
    @IBAction func backBtnDidTapped(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}

extension ProductDetailsVC: FSPagerViewDelegate, FSPagerViewDataSource{
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        if let data = product, let images = data.images{
            return images.count
        }else{
            return 0
        }
    }
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        if let data = product, let images = data.images{
            cell.imageView?.sd_setImage(with: URL(string: images[index]), placeholderImage: UIImage(named: "noImage"))
            cell.imageView?.contentMode = .scaleAspectFill
        }
        return cell
    }
    
    func pagerViewWillEndDragging(_ pagerView: FSPagerView, targetIndex: Int) {
        self.pageControl.currentPage = targetIndex
    }
    
    func pagerViewDidEndScrollAnimation(_ pagerView: FSPagerView) {
        self.pageControl.currentPage = pagerView.currentIndex
    }
}
