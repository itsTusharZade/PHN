//
//  ProductsViewModel.swift
//  PHN_Task
//
//  Created by Tushar Zade on 14/10/23.
//

import Foundation

protocol ProductsViewModelDelegate{
    func didReceiveProducts(productList: [ProductsResponse], categoryList : [Category])
}

struct ProductsViewModel{
    var delegate: ProductsViewModelDelegate?
    
    func getProducts(){
        let productsResource = ProductsResource()
        productsResource.getProducts { products in
            DispatchQueue.main.async {
                if let productsList = products{
                    let categories = productsList.reduce(into: Set<Category>()) { categoryResult, products in
                        print("Category-----------> \(categoryResult)")
                        if let cat = products.category{
                            categoryResult.insert(cat)
                        }
                    }
                    
                    print("categories-----------> \(categories)")
                    self.delegate?.didReceiveProducts(productList: productsList, categoryList: Array(categories))
                }
            }
        }
    }
}
