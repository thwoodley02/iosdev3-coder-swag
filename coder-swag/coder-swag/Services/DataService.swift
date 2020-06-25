//
//  DataService.swift
//  coder-swag
//
//  Created by Tom Woodley on 25/06/2020.
//  Copyright © 2020 Tom Woodley. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Deveslopes Logo Graphic Beanie", price: "£18", imageName: "hat01.png"),
        Product(title: "Deveslopes Logo Graphic Beanie", price: "£28", imageName: "hat02.png"),
        Product(title: "Deveslopes Logo Graphic Beanie", price: "£18", imageName: "hat03.png"),
        Product(title: "Deveslopes Logo Graphic Beanie", price: "£12", imageName: "hat04.png")
    ]
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Gray", price: "£32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "£32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodie Grey", price: "£32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodie Black", price: "£32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "£22", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Shirt Light Gray", price: "£22", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "£22", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Gray", price: "£22", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "£22", imageName: "shirt05.png"),
    ]
    
    private let digitalGoods = [Product]()
    
    
    func getCategoriess() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title{
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
