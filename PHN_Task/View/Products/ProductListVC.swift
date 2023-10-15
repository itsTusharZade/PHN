//
//  ProductListVC.swift
//  PHN_Task
//
//  Created by Tushar Zade on 13/10/23.
//

import UIKit

class ProductListVC: UIViewController {
    @IBOutlet weak var lblUsername: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    
    @IBOutlet weak var categoryCollection: UICollectionView!{
        didSet{
            self.categoryCollection.delegate = self
            self.categoryCollection.dataSource = self
        }
    }
    @IBOutlet weak var productsCollection: UICollectionView!{
        didSet{
            self.productsCollection.delegate = self
            self.productsCollection.dataSource = self
        }
    }
    
    @IBOutlet weak var btnLogout: UIButton!{
        didSet{
            self.btnLogout.setImageTintColor(.buttonTitle)
        }
    }
    
    
    private var productViewModel = ProductsViewModel()
    var categories = [Category]()
    var products = [ProductsResponse]()
    var categoryWiseProducts = [ProductsResponse]()
    
    let activityIndicator: ActivityIndicator = UIView.fromNib()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let userName = CustomUserDefaults.shared.get(key: .userName) as? String{
            self.lblUsername.text = userName
        }
        if let userEmail = CustomUserDefaults.shared.get(key: .userEmail) as? String{
            self.lblEmail.text = userEmail
        }
        productViewModel.delegate = self
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.showActivityIndicator()
            self.productViewModel.getProducts()
        }
    }
    
    
    func showActivityIndicator() {
        if let window = self.getWindow() {
            activityIndicator.frame = window.frame
            activityIndicator.center = window.center
            window.addSubview(activityIndicator)
            window.isUserInteractionEnabled = false
        }
    }
    
    func removeProgressView() {
        if let window = self.getWindow() {
            activityIndicator.removeFromSuperview()
            window.isUserInteractionEnabled = true
        }
    }
    
    
    
    @IBAction func logoutBtnDidClicked(_ sender: UIButton) {
        self.showAlertWithTwoActions(title: "Logout?", message: "Are you sure you want to logout?") {
            CustomUserDefaults.shared.resetDefaults()
            
            if let window = self.getWindow(){
                let loginVC = AppStoryboard.main.viewController(viewControllerClass: LoginVC.self)
                window.rootViewController = loginVC
                window.makeKeyAndVisible()
            }
        }
    }
}

extension ProductListVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case self.categoryCollection:
            return categories.count
        default:
            return categoryWiseProducts.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case self.categoryCollection:
            guard let categoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollCell", for: indexPath) as? CategoryCollCell else { return CategoryCollCell() }
            let category = categories[indexPath.item]
            categoryCell.populate(with: category)
            return categoryCell
        default:
            guard let productCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductsCollCell", for: indexPath) as? ProductsCollCell else { return ProductsCollCell() }
            let product = categoryWiseProducts[indexPath.item]
            productCell.populate(with: product)
            return productCell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.categoryCollection{
            self.categoryWiseProducts = products.filter({ $0.category?.id ==  self.categories[indexPath.row].id })
            self.productsCollection.reloadData()
        }else{
            let product = categoryWiseProducts[indexPath.row]
            let productDetailsVC = AppStoryboard.main.viewController(viewControllerClass: ProductDetailsVC.self)
            productDetailsVC.product = product
            productDetailsVC.modalPresentationStyle = .fullScreen
            productDetailsVC.modalTransitionStyle = .crossDissolve
            self.present(productDetailsVC, animated: true)
        }
    }
}
extension ProductListVC: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case self.categoryCollection:
            return CGSize(width: 140, height: 62)
        default:
            return CGSize(width: (collectionView.bounds.width / 2) - 5, height: 310)
        }
    }
}
