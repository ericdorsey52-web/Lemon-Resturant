//
//  Variable.swift
//  Lemon Resturant
//
//  Created by Eric Dorsey on 9/16/26.
//

import Playgrounds

#Playground("String Test"){
    
    var restaurantName = "Little Lemon"
    print("Hello \(restaurantName)")
    
    restaurantName = "Little Lemon Bistro"
    print("Now we are called\(restaurantName)")
    
    //constants cannot change
    
    let city = "New York"
    // city = chicago // erroc assign a value to a const
    print ("Our restaurant is located in \(city)")
    
    // string
    var specialDish = "Pasta"
    // Integer
    var aviableTables = 5
    //double
    var dishPrice = 12.50
    // booleans
    var isOpen = true
    // ch1
    var numberOfTables = 7
    
    let ownerName = "James"
    
    print("\(restaurantName) has \(numberOfTables) tables, owned by \(ownerName)")
    
    //ch2
    // string
    var specialDrink = "Coffee"
    // Integer
    var aviableDrinks = 12
    //double
    var drinkPrice = 6.50
    // booleans
    var drinkDelivery = true
    
    print("Our main drink is \(specialDrink), we also have \(aviableDrinks) additional drinks")
    
    // ch3
    var tipPrecent = 1.15
    var totalPrice = dishPrice + drinkPrice
    var subTotal = totalPrice * 1.15
    
    
    print("Total price plus tip is \(subTotal)")
    
}
