//
//  ProductVC.swift
//  ecmcApp
//
//  Created by Sahariar Kabir on 10/29/17.
//  Copyright © 2017 Sahariar Kabir. All rights reserved.
//

import UIKit

class ProductVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
	
	@IBOutlet weak var productsCollection: UICollectionView!

	private(set) public var products = [Product]()
	
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
		productsCollection.delegate = self
    }

	func initProduct(category: Category)  {
		products = DataService.instance.getProducts(forCategoryTitle: category.title)
		navigationItem.title = category.title
	}
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return products.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		
		if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? ProductCell {
			let product = products[indexPath.row]
			cell.updateViews(product: product)
			return cell
		}
		return ProductCell()
	}

}
