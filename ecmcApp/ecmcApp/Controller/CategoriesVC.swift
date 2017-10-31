//
//  ViewController.swift
//  ecmcApp
//
//  Created by Sahariar Kabir on 10/27/17.
//  Copyright © 2017 Sahariar Kabir. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource,UITableViewDelegate {
	@IBOutlet weak var CategoryTable: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		CategoryTable.dataSource = self
		CategoryTable.delegate = self
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return DataService.instance.getCategories().count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
			let category = DataService.instance.getCategories()[indexPath.row]
			cell.updateViews(category: category)
			return cell
		} else {
			return CategoryCell()
		}
	}
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let category  = DataService.instance.getCategories()[indexPath.row]
		performSegue(withIdentifier: "ProductVC", sender: category)
	}
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let productVc = segue.destination as? ProductVC {
			
			let barBtn = UIBarButtonItem()
			barBtn.title = " "
			navigationItem.backBarButtonItem = barBtn
			assert(sender as? Category != nil)
			productVc.initProduct(category: sender as! Category)
		}
	}
}

