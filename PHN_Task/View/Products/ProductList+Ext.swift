//
//  ProductList+Ext.swift
//  PHN_Task
//
//  Created by Tushar Zade on 14/10/23.
//

import Foundation

extension ProductListVC: ProductsViewModelDelegate{
    func didReceiveProducts(productList: [ProductsResponse], categoryList: [Category]) {
        self.removeProgressView()
        print("Categories.count -----> \(categoryList.count)")
        self.products = productList
        self.categories = categoryList.sorted(by: { ($0.id ?? 0) < ($1.id ?? 0) })
        self.categoryCollection.reloadData()
        self.productsCollection.reloadData()
        self.categoryWiseProducts = productList.filter({ $0.category?.id ==  self.categories[0].id })
    }
}
