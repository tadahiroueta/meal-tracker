//
//  FoodTableViewController.swift
//  meal-tracker
//
//  Created by Ueta, Lucas T on 4/10/24.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        let breakfast = Meal(name: "Breakfast", food: [
            Food(name: "Toast", description: "Buttered toast."),
            Food(name: "Fruit bowl", description: "Bowl of banana, blueberry, and strawberry."),
            Food(name: "Chocolate milk", description: "Whole-fat milk with chocolate powder.")
        ])
        let lunch = Meal(name: "Lunch", food: [
            Food(name: "Pasta", description: "Aglio y olio, fettucini pasta."),
            Food(name: "Steak", description: "Medium-rare rib-eye steak."),
            Food(name: "Salad", description: "Ceaser salad with cheese.")
        ])
        let dinner = Meal(name: "Dinner", food: [
            Food(name: "Ramen", description: "Miso ramen with bamboo."),
            Food(name: "Bread", description: "Homemade bread with olive oil."),
            Food(name: "Ice Cream", description: "Napolitan flavoured ice cream.")
        ])
        
        return [breakfast, lunch, dinner]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Food")
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int { return meals.count }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return meals[section].food.count }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)

        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        var configuration = cell.defaultContentConfiguration()
        configuration.text = food.name
        configuration.secondaryText = food.description
        cell.contentConfiguration = configuration

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? { return meals[section].name }
}
