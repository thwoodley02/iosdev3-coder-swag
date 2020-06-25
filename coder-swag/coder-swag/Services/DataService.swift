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
    
    func getCategoriess() -> [Category] {
        return categories
    }
}
