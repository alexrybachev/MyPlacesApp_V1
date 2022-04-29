//
//  MainViewController.swift
//  MyPlacesApp
//
//  Created by Aleksandr Rybachev on 29.04.2022.
//

import UIKit

class MainViewController: UITableViewController {
    
    // MARK: - Properties   
    let places = Place.getPlace()
        
    // MARK: - View Life Cyrcle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - UITableViewDataSource
extension MainViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        places.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell else { return UITableViewCell() }
        cell.nameLabel.text = places[indexPath.row].name
        cell.locationLabel.text = places[indexPath.row].location
        cell.typeLabel.text = places[indexPath.row].type
        cell.imageOfPlace.image = UIImage(named: places[indexPath.row].image)
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true
        
//        var content = cell.defaultContentConfiguration()
//        content.text = restaurantNames[indexPath.row]
//        content.image = UIImage(named: restaurantNames[indexPath.row])
//        content.imageProperties.cornerRadius = cell.frame.size.height / 2
//        cell.contentConfiguration = content
        
        return cell
    }
}
