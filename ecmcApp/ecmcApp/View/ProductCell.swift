//
//  ProductCell.swift
//  ecmcApp
//
//  Created by Sahariar Kabir on 10/29/17.
//  Copyright © 2017 Sahariar Kabir. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
	
	@IBOutlet weak var productImage: UIImageView!
	@IBOutlet weak var productTitle:UILabel!
	@IBOutlet weak var productPrice:UILabel!
	@IBOutlet weak var prodcutWish:UIButton!
	
	func updateViews(product:Product) {
		productImage.image = UIImage(named: product.imageName)
		productTitle.text = product.title
		productPrice.text = product.price
	}
	
}
