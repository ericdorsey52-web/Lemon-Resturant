//
//  Arrays.swift
//  Lemon Resturant
//
//  Created by Eric Dorsey on 9/26/26.
//

/*
 ----- ARRAYS -----
 Ordered collection that stores multiples values of the same type in a single variable.
 Values are stored in a specific order.
 Each value has an index starting at 0.
 
 -- Syntax --
 var/let arrayName:[dataType] = [value1, value2, value3, ...]
 
 */

import Playgrounds

#Playground {
    print("----- ARRAYS -----")
    
    print("\n-- Basic Array (String) --")
    var dishes:[String] = ["Pizza", "Pasta", "Soup"] // array of strings
    
    print(dishes)
    print(dishes[0]) // Pizza
    print(dishes[1]) // Pasta
    print(dishes[2]) // Soup
    print(dishes.count) // 3 , Counting items in the Arrary
    
    print("\n-- Adding a new dish (append) --")
    dishes.append("Salad")
    print(dishes)
    
    print("\n-- Removing a dish (remove) --")
    dishes.remove(at: 1)
    print(dishes)
    
    print("\n-- Adding a dish at the beginning of the array (insert) --")
    dishes.insert("Bread Sticks", at: 0)
    print(dishes)
    
    /*
     mini chal.
     
     
     
     */
    
    print("----- ARRAYS -----")
    
    print("\n-- Basic Array (String) --")
    var dessert:[String] = ["Pudding","Cake", "Ice Cream "]
    
    print(dessert)
    
    print(dessert.isEmpty)
    
    dessert.contains("Soda")
    
    print("\n-- array (double) --")
    var prices:[Double] = [10.99, 12.99, 14.99]
    print(prices)
    print(prices[2])
    
    let total = prices[0] + prices[1] + prices[2]
    print("Total \(total)")
    
    
    /*
     Mini Chal
     */
    
    print("\n-- Basic Array (String) --")
    var hobbies:[String] = ["Reading", "Drawing", "Coding", "Recording", "Talking"]
    print(hobbies)
    
    print("\n-- Adding a new dish (append) --")
    hobbies.append("Driving")
    print(hobbies)
    
    print("\n-- Removing a dish (remove) --")
    hobbies.remove(at: 3)
    print(hobbies)
    
    print("\n-- Adding a dish at the beginning of the array (insert) --")
    hobbies.insert("Music", at: 0)
    print(hobbies)
    
    print(hobbies.count)
    print(hobbies.isEmpty)
    print(hobbies.contains("Coding"))
    print(hobbies)
    
    
    
}
