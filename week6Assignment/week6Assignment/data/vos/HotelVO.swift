//
//  HotelVO.swift
//  week6Assignment
//
//  Created by Su Win Phyu on 9/7/19.
//  Copyright © 2019 swp. All rights reserved.
//

import Foundation
import UIKit

class HotelVO{

    var name : String = ""
    var address : String = ""
    var image : UIImage?
    var price : String = ""
    var services : String = ""
    var rating : String = ""
    var facality : String = ""
    var discount : String = ""
    
    init(name : String , address : String , image: UIImage , price : String , services : String , rating : String, facality : String, discount : String) {
        self.name = name
        self.address = address
        self.image = image
        self.price = price
        self.services = services
        self.rating = rating
        self.facality = facality
        self.discount = discount
        
        
    }
}

extension HotelVO {
    
    static func getNearByHotel() -> [HotelVO] {
        return [
            .init(name: "The Westeen", address: "Gulshan Circle 2, Dhaka", image: UIImage(imageLiteralResourceName: "hotel1"), price: "$99/day", services: "Free Wifi", rating:"4.5 (21 ratings)", facality: "Swimming",discount: "Get 50% Off"),
            
            .init(name: "Radison Blu", address: "Airport Road, Dhaka ", image: UIImage(imageLiteralResourceName: "hotel2"), price: "$89/day", services: "Free Wifi", rating: "4.5 (21 ratings)", facality: "Golf Club and Gym",discount: "Free Buffet Dinner"),
            
            .init(name: "The Westeen", address: "Gulshan Circle 2, Dhaka", image: UIImage(imageLiteralResourceName: "hotel3"), price: "$99/day", services: "Free Wifi", rating:"4.5 (21 ratings)", facality: "Swimming",discount: "Get 50% Off"),
            
            .init(name: "Radison Blu", address: "Airport Road, Dhaka ", image: UIImage(imageLiteralResourceName: "hotel4"), price: "$89/day", services: "Free Wifi", rating: "4.5 (21 ratings)", facality: "Golf Club and Gym",discount: "Free Buffet Dinner"),
            .init(name: "The Westeen", address: "Gulshan Circle 2, Dhaka", image: UIImage(imageLiteralResourceName: "hotel5"), price: "$99/day", services: "Free Wifi", rating:"4.5 (21 ratings)", facality: "Swimming",discount: "Get 50% Off"),
            
            .init(name: "Radison Blu", address: "Airport Road, Dhaka ", image: UIImage(imageLiteralResourceName: "hotel6"), price: "$89/day", services: "Free Wifi", rating: "4.5 (21 ratings)", facality: "Golf Club and Gym",discount: "Free Buffet Dinner")
           
        ]
    }
    
    static func getPopularHotel() -> [HotelVO] {
        return [
            .init(name: "Popular", address: "Gulshan Circle 2, Dhaka", image: UIImage(imageLiteralResourceName: "hotel3"), price: "$99/day", services: "Free Wifi", rating:"4.5 (21 ratings)", facality: "Swimming",discount: "Get 50% Off"),
            
            .init(name: "Radison Blu", address: "Airport Road, Dhaka ", image: UIImage(imageLiteralResourceName: "hotel4"), price: "$89", services: "Free Wifi", rating: "4.5 (21 ratings)", facality: "Golf Club and Gym",discount: "Free Buffet Dinner")
            
        ]
    }
    
    static func getAllHotel() -> [HotelVO] {
        return [
            .init(name: "All", address: "Gulshan Circle 2, Dhaka", image: UIImage(imageLiteralResourceName: "hotel5"), price: "$99", services: "Free Wifi", rating:"4.5 (21 ratings)", facality: "Swimming",discount: "Get 50% Off"),
            
            .init(name: "Radison Blu", address: "Airport Road, Dhaka ", image: UIImage(imageLiteralResourceName: "hotel6"), price: "$89", services: "Free Wifi", rating: "4.5 (21 ratings)", facality: "Golf Club and Gym",discount: "Free Buffet Dinner")
        ]
    }
    
}
