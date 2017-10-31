//
//  dataService.swift
//  ecmcApp
//
//  Created by Sahariar Kabir on 10/29/17.
//  Copyright © 2017 Sahariar Kabir. All rights reserved.
//

import Foundation

class DataService {
	static let instance = DataService()
	private let categories = [
		Category(title: "Tops", imageName:"topsimg.png" ),
		Category(title: "Bottoms", imageName:"btmimg.png" ),
		Category(title: "Shoes", imageName:"shoes.png" ),
		Category(title: "Bags", imageName:"bags.png" ),
	]
//	adding products tops
	private let tops = [
	Product(title: "Ferrag amo Top", price: "$18.00", imageName: "Ferragamotop.png"),
	Product(title: "Desigual Top", price: "$17.00", imageName: "Desigual_top.png"),
	Product(title: "Design Top", price: "$17.55", imageName: "designtop.png"),
	Product(title: "Arrow Top", price: "$18.15", imageName: "Arrowtop-4.png")
	]
	//	adding products bottoms
	private let bottoms = [
		Product(title: "Gagra Bottom", price: "$15.00", imageName: "Gagra Bottom.png"),
		Product(title: "Jeans", price: "$17.9", imageName: "Jeans.png"),
		Product(title: "Office Bottom", price: "$16.70", imageName: "Office Bottom.png"),
		Product(title: "Pattern Bottom", price: "$18", imageName: "Pattern Bottom.png")
	]
	//	adding products shoes
	private let shoes = [
		Product(title: "Black Lace Up Rubber", price: "$38", imageName: "shoe_bg.png"),
		Product(title: "Apricot Faux Suede Lace Up", price: "$37", imageName: "shoenbg.png"),
		Product(title: "Pink Satin Fabric Rubber Sole ", price: "$35", imageName: "S3bg.png"),
		Product(title: "Pink Velvet Lace Up Rubber", price: "$38", imageName: "s4bg.png")
	]
	//	adding products bags
	private let bags = [
		Product(title: "Back Bag", price: "$38.00", imageName: "BackBag.png"),
		Product(title: "Hand Bag", price: "$27.00", imageName: "Hand bag.png"),
		Product(title: "Hand Leather Bags ", price: "$35", imageName: "hand Leather Bags.png"),
		Product(title: "Skin Bag", price: "$48", imageName: "Skin Bag.png")
	]
	
	private	let digitalGoods = [Product]()
	
	func getCategories() -> [Category] {
	return categories
	}
	func getProducts(forCategoryTitle title: String) -> [Product] {
		switch title {
		case "Tops":
		return	getTops()
		case "Bottoms":
		return	getBottoms()
		case "Shoes":
		return	getShoes()
		case "Bags":
		return	getBags()
		default:
		return	getTops()
		}
	}
	func  getTops() -> [Product] {
		return tops
	}
	func  getBottoms() -> [Product] {
		return bottoms
	}
	func  getShoes() -> [Product] {
		return shoes
	}
	func  getBags() -> [Product] {
		return bags
	}
	
	
	
}
