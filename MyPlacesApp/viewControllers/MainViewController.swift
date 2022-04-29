//
//  MainViewController.swift
//  MyPlacesApp
//
//  Created by Aleksandr Rybachev on 29.04.2022.
//

import UIKit

class MainViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

// MARK: - UITableViewDataSource
extension MainViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = "Cell"
        
        
        cell.contentConfiguration = content
        return cell
    }
}

// MARK: - UITableViewDelegate
extension MainViewController {
    
}
