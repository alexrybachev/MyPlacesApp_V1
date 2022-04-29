//
//  NewPlaceTableViewController.swift
//  MyPlacesApp
//
//  Created by Aleksandr Rybachev on 29.04.2022.
//

import UIKit

class NewPlaceTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

// MARK: - UITableViewDelegate
extension NewPlaceTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    }
}

// MARK: - UITextFieldDelegate
extension NewPlaceTableViewController: UITextFieldDelegate {
    
    // Скрываем клавиатуру по нажатию на Done
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
