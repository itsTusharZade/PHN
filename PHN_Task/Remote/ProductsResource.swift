//
//  ProductsResource.swift
//  PHN_Task
//
//  Created by Tushar Zade on 14/10/23.
//

import Foundation

struct ProductsResource{
    func getProducts(completion : @escaping (_ result: [ProductsResponse]?) -> Void){
        let productsUrl = URL(string: ApiEndpoints.getProducts)!
        let httpUtility = HTTPUtility()
        httpUtility.getApiData(requestUrl: productsUrl, resultType: [ProductsResponse].self) { result in
            _ = completion(result)
        }
    }
}
