//
//  ViewController.swift
//  coder-swag
//
//  Created by Tom Woodley on 25/06/2020.
//  Copyright © 2020 Tom Woodley. All rights reserved.
//

import UIKit

class CatagoryVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategoriess().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategoriess()[indexPath.row]
            cell.updateViews(category: category)
            
            return cell
        } else {
            return CategoryCell()
        }
    }
}

