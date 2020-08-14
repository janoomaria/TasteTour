//
//  MyTableViewController.swift
//  TasteTour
//
//  Created by Admin on 8/13/20.
//  Copyright © 2020 Maria Janoo. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController, UISearchBarDelegate {
    
    
    let data = ["Butter Chicken", "Chicken Tikka Masala", "Keema","Halwa", "Tacos", "Burritos","Deluxe Pizza Pasta","Lasagna", "Spaghetti", "Pancakes", "Rice Krispie Treats","Mousse", "Caramel Flan", "Tacquitos","French Toast", "Cinnamon Rolls", "Italian Baked Pasta"]
    var filteredData: [String]!

    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        
        filteredData = data


    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return filteredData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        
        cell.textLabel?.text = filteredData[indexPath.row]
        
        return cell
    }
    //Mark: Search Bar Config
    
    func  searchBar(_searchBar: UISearchBar, textDidChange searchText: String) {
        
        filteredData = []
        
        if searchText == "" {
            filteredData = data
        }
        else {
            for food in data {
                if food.lowercased().contains(searchText.lowercased()) {
                    filteredData.append(food)
                }
            }
        }
        
        self.tableView.reloadData()
       
    
    }


}
