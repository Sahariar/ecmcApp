//
//  CategoryCell.swift
//  ecmcApp
//
//  Created by Sahariar Kabir on 10/29/17.
//  Copyright © 2017 Sahariar Kabir. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

	@IBOutlet weak var CategoryImage:UIImageView!
	@IBOutlet weak var CategoryTitle:UILabel!
	@IBOutlet weak var CategoryTP:UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
	func updateViews(category:Category) {
		CategoryImage.image = UIImage(named: category.imageName)
		CategoryTitle.text = category.title
	}

}
