//
//  Place.swift
//  MyPlacesApp
//
//  Created by Aleksandr Rybachev on 29.04.2022.
//

import UIKit

struct Place {
    let name: String
    let location: String?
    let type: String?
    let image: UIImage?
    let restaurantImage: String?
    
    static let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории",
        "Классик", "Love&Life", "Шок", "Бочка"
    ]
}

extension Place {
    static func getPlace() -> [Place] {
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Уфа", type: "Ресторан", image: nil, restaurantImage: place))
        }
    
        return places
    }
}
