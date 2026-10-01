//
//  Switch.swift
//  Lemon Resturant
//
//  Created by Eric Dorsey on 9/23/26.
//

import Playgrounds


/*
 ----- SWITCH -----
 lets you compare one value against multiple possible cases and run different code depending on which case matches.
 It's used when you want to check many conditions in a clean, organized way.
 
 -- Syntax --
 
 switch value {
 case pattern1:
    code to run if value matches pattern1
 
 case pattern2:
    code to run if values matches pattern2
 
 default:
    code to run in no cases match
 }
 
 */


#Playground("Switch") {
    print("----- Switch ----")
    
    print("\n-- Numbers (Int) --")
    
    let number = 13
    
    switch number {
    case 1:
        print("Number One")
        
    case 2:
        print("Number Two")
        
    default:
        print("Other Number")
    }
    
    // MARK: - Example 2
    
    let position = 13
    
    switch position {
    case 1:
        print("🥇 You came first!")
        
    case 2:
        print("🥈 You came second")
        
    case 3:
        print("🥉 You came third")
        
    default:
        print("You placed \(position)")
    }
    
    // MARK: -
    print("\n-- Text (String), Matching multiple values --")
    
    // A,A+ -> Excellent!
    // B,B+ -> Good Job
    // C -> You passed
    // default -> try again.
    
    let grade = "B+"
    
    switch grade {
    case "A", "A+":
        print("Excellent!")
    
    case "B", "B+":
        print("Good Job")
        
    case "C":
        print("You passed")
        
    default:
        print("Try again.")
    }
    
    // MARK: -
    print("\n-- Numbers (Int), using range --")
    // 90-100 -> Grade A
    // 80-89 -> Grade B
    // 70-79 -> Grade C
    // default -> Grade F
    
    let score = 82
    
    switch score {
    case 90...100:
        print("Grade: A")
        
    case 80...89:
        print("Grade: B")
    
    case 70...79:
        print("Grade: C")
        
    default:
        print("Grade: F")
    }
    
    // MARK:-
    /*
     Mini Chal.
     
     1. Create a variable called day
     2.Use switch to print:
        -"Weekend for Saturday or Sunday
        -"Weekend for Monday-Friday
        -"Invalid day" for anything else
     */
    
    let day = "Monday"
    
    switch day {
    case "Saturday", "Sunday":
        print("Weekend")
        
    case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday":
        print("Weekday")
        
    default:
        print("Invalid day")
    }
    
    
}

